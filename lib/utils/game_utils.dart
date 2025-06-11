import 'package:flutter/material.dart';
import 'package:sportsjam/utils/date.dart';

import '../data/mlb data/mlb_data.dart';

class MlbUtils {
  static gameUtils(
    MlbGame game,
    bool h,
  ) {
    if (game.gameUtils.isLive == true || game.gameUtils.isFinal == true) {
      if (game.lineScore.teamsScore!.teamScoreHome.runs == null) {
        return Container();
      }
      return h
          ? Text('${game.lineScore.teamsScore!.teamScoreHome.runs}')
          : Text('${game.lineScore.teamsScore!.teamScoreAway.runs}');
    }
  }

  static gameTime(MlbGame game) {
    //show game time preview
    if (game.gameUtils.isPreview == true) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text("Today"),
          ),
          Text(Date.time(game.gameDate))
        ],
      );
    }

    //else if game is live
    else if (game.gameUtils.isLive == true) {
      //1st inning
      if (game.lineScore.currentInning == 1) {
        return Column(
          children: [
            Text("${game.lineScore.currentInning}st inning"),
            game.lineScore.out == 1
                ? Text("${game.lineScore.out} out")
                : Text("${game.lineScore.out} outs")
          ],
        );
      }

      //2nd inning
      else if (game.lineScore.currentInning == 2) {
        return Column(
          children: [
            Text("${game.lineScore.currentInning}nd inning"),
            game.lineScore.out == 1
                ? Text("${game.lineScore.out} out")
                : Text("${game.lineScore.out} outs")
          ],
        );
      }

      //3rd inning
      else if (game.lineScore.currentInning == 3) {
        return Column(
          children: [
            Text("${game.lineScore.currentInning}rd inning"),
            game.lineScore.out == 1
                ? Text("${game.lineScore.out} out")
                : Text("${game.lineScore.out} outs")
          ],
        );
      } else {
        return Column(
          children: [
            Text("${game.lineScore.currentInning}th inning"),
            game.lineScore.out == 1
                ? Text("${game.lineScore.out} out")
                : Text("${game.lineScore.out} outs")
          ],
        );
      }
    }

    //if game has ended
    else if (game.gameUtils.isFinal == true) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text("Final"),
          ),
          Text("${game.lineScore.currentInning} innings")
        ],
      );
    }

    //if game is delayed
    else {
      return const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text("Delayed or Canceled"),
          )
        ],
      );
    }
  }
}
