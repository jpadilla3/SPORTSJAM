import 'package:flutter/material.dart';
import 'package:sportsjam/components/all%20games%20page/games.dart';
import 'package:sportsjam/components/all%20games%20page/header.dart';

import '../components/appbar.dart';

class AllGames extends StatefulWidget {
  final String time2;
  final int section;
  const AllGames(this.time2, this.section, {super.key});

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
                  ? mlbGames(context)
                  : (widget.section == 0
                      ? nbaGames(context)
                      : nflGames(context))
            ],
          ),
        ));
  }
}
