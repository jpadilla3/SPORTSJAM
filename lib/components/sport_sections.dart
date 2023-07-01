import 'package:flutter/material.dart';
import 'package:sportsjam/components/match_scores.dart';
import 'package:sportsjam/main%20screens/all_games.dart';

import '../data/mlb data/mlb_data.dart';

header(String title, context, int section, List<MlbGame> games) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AllGames(2, games)));
        },
        child: const Text('See More'),
      )
    ],
  );
}

Widget nbaSection(context, count) {
  List<MlbGame> game = [];
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('NBA', context, 0, game),
        SizedBox(
          height: count == 0
              ? MediaQuery.of(context).size.height * 0.12
              : MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: count == 0
              ? const Center(
                  child: Text(
                    'No games today',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                )
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: nbaScores(context, index),
                    );
                  })),
        )
      ],
    ),
  );
}

Widget nflSection(context, count) {
  List<MlbGame> game = [];
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('NFL', context, 1, game),
        SizedBox(
          height: count == 0
              ? MediaQuery.of(context).size.height * 0.12
              : MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: count == 0
              ? const Center(
                  child: Text(
                    'No games today',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                )
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: nflScores(context, index),
                    );
                  })),
        )
      ],
    ),
  );
}

Widget mlbSection(context, count, List<MlbGame> games) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('MLB', context, 2, games),
        SizedBox(
          height: count == 0
              ? MediaQuery.of(context).size.height * 0.12
              : MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: count == 0
              ? const Center(
                  child: Text(
                    'No games today',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                )
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: mlbScores(context, index, games),
                    );
                  })),
        )
      ],
    ),
  );
}
