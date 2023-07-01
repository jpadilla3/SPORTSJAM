import 'package:flutter/material.dart';

import '../../data/mlb data/mlb_data.dart';
import '../../utils/date.dart';

class MlbInfo {
  info(MlbGame game) {
    if (game.gameUtils.isCancelled == true) {
      return const Text('Cancelled');
    } else if (game.gameUtils.isPostponed == true) {
      return const Text('Postponed');
    } else if (game.gameUtils.isPreview == true ||
        game.gameUtils.isWarmup == true) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Today'),
          Text(Date.time(game.gameDate)),
        ],
      );
    } else if (game.gameUtils.isFinal == true) {
      return const Text('Final');
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('${game.lineScore.inningState}'),
              Text('${game.lineScore.currentInningOrdial}')
            ],
          )
        ],
      );
    }
  }
}
