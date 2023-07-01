import 'package:flutter/material.dart';
import 'package:sportsjam/utils/team_lookup.dart';

import '../../data/mlb data/mlb_data.dart';
import '../../utils/game_utils.dart';

class MlbLine {
  static home(context, MlbGame game) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                  mlbTeam.mlbCap(game.teamInfo.teamInfoHome.abbreviation)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(game.teamInfo.teamInfoHome.name),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MlbUtils.gameUtils(game, true))
        ],
      ),
    );
  }

  static away(context, MlbGame game) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                  mlbTeam.mlbCap(game.teamInfo.teamInfoAway.abbreviation)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(game.teamInfo.teamInfoAway.name),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MlbUtils.gameUtils(
                game,
                false,
              ))
        ],
      ),
    );
  }
}
