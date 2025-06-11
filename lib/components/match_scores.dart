import 'package:flutter/material.dart';
import 'package:sportsjam/components/game%20components/team_line.dart';
import 'package:sportsjam/components/mlb/mlb_game_info.dart';
import 'package:sportsjam/main%20screens/home.dart';
import 'package:sportsjam/utils/team_lookup.dart';

import '../main screens/match_page.dart';
import '../data/mlb data/mlb_data.dart';

Widget myTeams(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => HomePage()))),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
      width: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            const Row(
              children: [Text('Today'), Spacer(), Text('7:30 pm')],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .072,
                  height: MediaQuery.of(context).size.width * .07,
                  child: Image.asset(mlbTeam.mlbCap('SEA')),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('TM1'),
                ),
                const Spacer(),
                const Text('1')
              ],
            ),
            const SizedBox(
              height: 0.5,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .072,
                  height: MediaQuery.of(context).size.width * .07,
                  child: Image.asset(mlbTeam.mlbCap('COL')),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('TM2'),
                ),
                const Spacer(),
                const Text('2')
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget teamLine(context, String logo, String name) {
  return SizedBox(
    width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            width: 35,
            height: 35,
            child: Image.asset(logo),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(name),
        ),
        const Spacer(),
        Padding(padding: const EdgeInsets.only(right: 10.0), child: Container())
      ],
    ),
  );
}

Widget nbaScores(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => HomePage()))),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.grey[350]),
          height: MediaQuery.of(context).size.height * 0.12,
          width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  teamLine(
                    context,
                    nbaTeam.nbaLogo('DET'),
                    'team 1',
                  ),
                  teamLine(
                    context,
                    nbaTeam.nbaLogo('TOR'),
                    'team 2',
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.grey[400]),
          height: MediaQuery.of(context).size.height * 0.12,
          width: (MediaQuery.of(context).size.width - 40) * (2 / 7),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Today'),
              Text('7:30 pm'),
            ],
          ),
        )
      ],
    ),
  );
}

Widget nflScores(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => HomePage()))),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.grey[350]),
          height: MediaQuery.of(context).size.height * 0.12,
          width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  teamLine(
                    context,
                    nflTeam.nflLogo('CHI'),
                    'team 1',
                  ),
                  teamLine(
                    context,
                    nflTeam.nflLogo('BAL'),
                    'team 2',
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.grey[400]),
          height: MediaQuery.of(context).size.height * 0.12,
          width: (MediaQuery.of(context).size.width - 40) * (2 / 7),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Today'),
              Text('7:30 pm'),
            ],
          ),
        )
      ],
    ),
  );
}

Widget mlbScores(context, index, List<MlbGame> games) {
  final game = games[index];

  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => MatchPage(game))));
    },
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              color: Colors.grey[350]),
          height: MediaQuery.of(context).size.height * 0.12,
          width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MlbLine.away(context, game),
                  MlbLine.home(context, game)
                ],
              )
            ],
          ),
        ),

        //shows current game info
        Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.grey[400]),
            height: MediaQuery.of(context).size.height * 0.12,
            width: (MediaQuery.of(context).size.width - 40) * (2 / 7),
            child: mlbinfo(context, game))
      ],
    ),
  );
}
