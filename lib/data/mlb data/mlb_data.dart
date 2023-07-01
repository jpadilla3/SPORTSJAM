class MlbGame {
  final GameUtils gameUtils;
  final LineScore lineScore;
  final TeamInfo teamInfo;
  final int gamePk;
  final String gameDate;

  MlbGame(
      {required this.gameUtils,
      required this.lineScore,
      required this.teamInfo,
      required this.gamePk,
      required this.gameDate});
}

class GameUtils {
  bool isFinal;
  bool isLive;
  bool isPreview;
  bool isCancelled;
  bool isDelayed;
  bool isPostponed;
  bool isWarmup;

  GameUtils(
      {required this.isFinal,
      required this.isLive,
      required this.isPreview,
      required this.isCancelled,
      required this.isDelayed,
      required this.isPostponed,
      required this.isWarmup});
}

class LineScore {
  final int? balls;
  final int? currentInning;
  final String? inningState;
  final int? out;
  final int? strikes;
  final TeamsScore? teamsScore;
  final String? currentInningOrdial;

  LineScore(
      {this.balls,
      this.currentInning,
      this.inningState,
      this.out,
      this.strikes,
      this.teamsScore,
      this.currentInningOrdial});
}

class TeamsScore {
  final TeamsScoreAway teamScoreAway;
  final TeamsScoreHome teamScoreHome;

  TeamsScore({required this.teamScoreAway, required this.teamScoreHome});
}

class TeamsScoreAway {
  final int? errors;
  final int? hits;
  final int? runs;

  TeamsScoreAway({this.errors, this.hits, this.runs});
}

class TeamsScoreHome {
  final int? errors;
  final int? hits;
  final int? runs;

  TeamsScoreHome({this.errors, this.hits, this.runs});
}

class TeamInfo {
  final TeamInfoAway teamInfoAway;
  final TeamInfoHome teamInfoHome;

  TeamInfo({required this.teamInfoAway, required this.teamInfoHome});
}

class TeamInfoAway {
  final String abbreviation;
  final String clubName;
  final String locationName;
  final String name;
  final TeamRecordAway teamRecordAway;

  TeamInfoAway(
      {required this.abbreviation,
      required this.clubName,
      required this.locationName,
      required this.name,
      required this.teamRecordAway});
}

class TeamInfoHome {
  final String abbreviation;
  final String clubName;
  final String locationName;
  final String name;
  final TeamRecordHome teamRecordHome;

  TeamInfoHome(
      {required this.abbreviation,
      required this.clubName,
      required this.locationName,
      required this.name,
      required this.teamRecordHome});
}

class TeamRecordHome {
  final int losses;
  final int wins;

  TeamRecordHome({required this.losses, required this.wins});
}

class TeamRecordAway {
  final int losses;
  final int wins;

  TeamRecordAway({required this.losses, required this.wins});
}
