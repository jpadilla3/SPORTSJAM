import 'package:flutter/material.dart';
import 'package:sportsjam/data/mlb%20data/mlb_data.dart';
import 'package:sportsjam/utils/date.dart';

Widget mlbinfo(context, MlbGame game) {
  //prints if game is finished
  if (game.gameUtils.isFinal == true) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Final'),
      ],
    );
  }

  //prints if game is live
  else if (game.gameUtils.isLive == true) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("${game.lineScore.currentInning} inning"),
        Text("${game.lineScore.out} outs")
      ],
    ));
  }

  //prints if game is upcoming
  else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Today'),
        Text(Date.time(game.gameDate)),
      ],
    );
  }
}
