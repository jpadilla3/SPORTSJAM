import 'package:flutter/material.dart';
import 'package:sportsjam/components/match%20page/player_stats.dart';

import '../components/appbar.dart';
import '../components/match page/boxscore.dart';
import '../components/match page/game_live.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  Widget matchPageTeam(String name, String logo, context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.height * 0.1,
          child: Image.asset(logo),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }

  List<Widget> teams = <Widget>[const Text('team 1'), const Text('team 2')];
  final List<bool> _selectedTeam = <bool>[true, false];

  int count = 0;

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
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0, bottom: 15, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //team 1
                  matchPageTeam(
                      'TEAM 1', 'assets/mlb/main/seattle-logo.png', context),

                  //score 1
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '20',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),

                  //time
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 0),
                        child: Text('Today'),
                      ),
                      Text('7:30 pm')
                    ],
                  ),

                  //score 2
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '20',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),

                  //team 2
                  matchPageTeam('TEAM 2',
                      'assets/mlb/main/philadelphia-logo.png', context)
                ],
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),

            mlbLive(context),

            //boxscore
            mlbBoxScore(context),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(15),
                constraints: BoxConstraints(
                    minWidth: (MediaQuery.of(context).size.width - 33) / 2,
                    minHeight: MediaQuery.of(context).size.height * 0.035),
                isSelected: _selectedTeam,
                selectedBorderColor: Colors.red,
                fillColor: Colors.red,
                selectedColor: Colors.white,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedTeam.length; i++) {
                      _selectedTeam[i] = i == index;
                      count = index;
                    }
                  });
                },
                children: teams,
              ),
            ),
            pitching(context, count),
            hitting(context, count)
          ],
        ),
      ),
    );
  }
}
