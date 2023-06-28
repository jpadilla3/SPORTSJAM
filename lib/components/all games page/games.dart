import 'package:flutter/material.dart';
import 'package:sportsjam/components/match_scores.dart';

Widget mlbGames(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * .801,
    child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: mlbScores(context, index),
          );
        })),
  );
}

Widget nflGames(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * .801,
    child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: nflScores(context, index),
          );
        })),
  );
}

Widget nbaGames(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * .801,
    child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: nbaScores(context, index),
          );
        })),
  );
}
