import 'package:flutter/material.dart';
import 'package:sportsjam/components/match_scores.dart';
import 'package:sportsjam/main%20screens/all_games.dart';
import 'package:sportsjam/utils/date.dart';

header(String title, context, int section) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title),
      GestureDetector(
        onTap: () {
          //passes today's date and which league to look up
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AllGames(Date().currentDate(), section)));
        },
        child: const Text('See More'),
      )
    ],
  );
}

Widget nbaSection(context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('NBA', context, 0),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
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

Widget nflSection(context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('NFL', context, 1),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
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

Widget mlbSection(context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: Column(
      children: [
        header('MLB', context, 2),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: mlbScores(context, index),
                );
              })),
        )
      ],
    ),
  );
}
