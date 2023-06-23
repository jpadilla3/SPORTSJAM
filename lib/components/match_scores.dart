import 'package:flutter/material.dart';

import '../main screens/match_page.dart';

Widget myTeams(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => MatchPage()))),
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
                  height: MediaQuery.of(context).size.width * .072,
                  child: Image.asset('assets/mlb/cap/seattle-cap.png'),
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
                  height: MediaQuery.of(context).size.width * .072,
                  child: Image.asset('assets/mlb/cap/colorado-cap.png'),
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

Widget teamLine(context, String logo, String name, String score) {
  return SizedBox(
    width: (MediaQuery.of(context).size.width - 40) * (5 / 7),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(logo),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(name),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(score),
        )
      ],
    ),
  );
}

Widget nbaScores(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => MatchPage()))),
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
                      context, 'assets/mlb/cap/detroit-cap.png', 'team 1', '1'),
                  teamLine(
                      context, 'assets/mlb/cap/toronto-cap.png', 'team 2', '2')
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
        context, MaterialPageRoute(builder: ((context) => MatchPage()))),
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
                  teamLine(context, 'assets/mlb/cap/chicago-cubs-cap.png',
                      'team 1', '1'),
                  teamLine(context, 'assets/mlb/cap/baltimore-cap.png',
                      'team 2', '2')
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

Widget mlbScores(context, index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: ((context) => MatchPage()))),
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
                  teamLine(context, 'assets/mlb/cap/new-york-mets-cap.png',
                      'team 1', '1'),
                  teamLine(
                      context, 'assets/mlb/cap/arizona-cap.png', 'team 2', '2')
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
