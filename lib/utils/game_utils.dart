import 'package:flutter/material.dart';

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
}
