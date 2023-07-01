import 'package:flutter/material.dart';
import 'package:sportsjam/components/all%20games%20page/games.dart';
import 'package:sportsjam/components/all%20games%20page/header.dart';

import '../components/appbar.dart';
import '../data/mlb data/mlb_data.dart';

class AllGames extends StatefulWidget {
  final List<MlbGame> games;
  final int section;
  const AllGames(this.section, this.games, {super.key});

  @override
  State<AllGames> createState() => _AllGamesState();
}

class _AllGamesState extends State<AllGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: appbar2(context)),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              heading(context, 'Today\'s Games'),
              widget.section == 2
                  ? mlbGames(context, widget.games)
                  : (widget.section == 0
                      ? nbaGames(context)
                      : nflGames(context))
            ],
          ),
        ));
  }
}
