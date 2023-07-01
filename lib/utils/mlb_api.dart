import 'dart:convert';
import 'package:http/http.dart' as http;
import '../data/mlb data/mlb_data.dart';
import 'date.dart';

class MlbApi {
  static Future<List<MlbGame>> fetchGames() async {
    var url =
        "https://bdfed.stitch.mlbinfra.com/bdfed/transform-mlb-scoreboard?stitch_env=prod&sortTemplate=4&sportId=1&&sportId=51&startDate=${Date().currentDate()}&endDate=${Date().currentDate()}&gameType=E&&gameType=S&&gameType=R&&gameType=F&&gameType=D&&gameType=L&&gameType=W&&gameType=A&&gameType=C&language=en&leagueId=104&&leagueId=103&&leagueId=160&contextTeamId";

    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['dates'][0]['games'] as List<dynamic>;
    final transformed = results.map((g) {
      final gU = GameUtils(
        isFinal: g['gameUtils']['isFinal'],
        isLive: g['gameUtils']['isLive'],
        isPreview: g['gameUtils']['isPreview'],
        isCancelled: g['gameUtils']['isCancelled'],
        isDelayed: g['gameUtils']['isDelayed'],
        isPostponed: g['gameUtils']['isPostponed'],
        isWarmup: g['gameUtils']['isWarmup'],
      );

      final tsa = TeamsScoreAway(
          errors: g['linescore']['teams']?['away']['errors'],
          hits: g['linescore']['teams']?['away']['hits'],
          runs: g['linescore']['teams']?['away']['runs']);

      final tsh = TeamsScoreHome(
          errors: g['linescore']['teams']?['home']['errors'],
          hits: g['linescore']['teams']?['home']['hits'],
          runs: g['linescore']['teams']?['home']['runs']);
      final ts = TeamsScore(teamScoreAway: tsa, teamScoreHome: tsh);

      final ls = LineScore(
          balls: g['linescore']['balls'],
          currentInning: g['linescore']['currentInning'],
          inningState: g['linescore']['inningState'],
          out: g['linescore']['outs'],
          strikes: g['linescore']['strikes'],
          teamsScore: ts,
          currentInningOrdial: g['linescore']['currentInningOrdinal']);

      final tra = TeamRecordAway(
          losses: g['teams']['away']['leagueRecord']['losses'],
          wins: g['teams']['away']['leagueRecord']['wins']);

      final trh = TeamRecordHome(
          losses: g['teams']['home']['leagueRecord']['losses'],
          wins: g['teams']['home']['leagueRecord']['wins']);

      final tia = TeamInfoAway(
          abbreviation: g['teams']['away']['team']['abbreviation'],
          clubName: g['teams']['away']['team']['clubName'],
          locationName: g['teams']['away']['team']['locationName'],
          name: g['teams']['away']['team']['name'],
          teamRecordAway: tra);

      final tih = TeamInfoHome(
          abbreviation: g['teams']['home']['team']['abbreviation'],
          clubName: g['teams']['home']['team']['clubName'],
          locationName: g['teams']['home']['team']['locationName'],
          name: g['teams']['home']['team']['name'],
          teamRecordHome: trh);

      final ti = TeamInfo(teamInfoAway: tia, teamInfoHome: tih);
      return MlbGame(
          gameUtils: gU,
          lineScore: ls,
          teamInfo: ti,
          gamePk: g['gamePk'],
          gameDate: g['gameDate']);
    }).toList();

    return transformed;
  }
}
