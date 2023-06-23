import 'package:flutter/material.dart';

Widget boxscoreTeams(String team1, String team2, context) {
  return Container(
    //color: Colors.blue,
    alignment: Alignment.centerLeft,
    width: MediaQuery.of(context).size.width * 0.38,
    height: MediaQuery.of(context).size.height * 0.072,
    child: const Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [Text('Team 1'), Text('Team 2')],
      ),
    ),
  );
}

Widget BoxScore(context) {
  Widget quarterScores(String team) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '20',
        ),
        Text(
          '20',
        ),
        Text(
          '20',
        ),
        Text(
          '20',
        ),
        Text(
          '80',
        ),
      ],
    );
  }

  Widget quarters() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '1Q',
        ),
        Text(
          '2Q',
        ),
        Text(
          '3Q',
        ),
        Text(
          '4Q',
        ),
        Text(
          'FT',
        ),
      ],
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[350],
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.38,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      const Padding(
                        padding: EdgeInsets.only(top: 2.0, left: 10),
                        child: Text(
                          'Team',
                        ),
                      ),

                      //divider
                      const Divider(
                        color: Colors.black,
                      ),

                      //teams
                      boxscoreTeams('team1', 'team2', context)
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: (MediaQuery.of(context).size.width * 0.62) - 30,
                  child: Column(
                    children: [
                      //quarters
                      Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: quarters()),

                      //divider
                      const Divider(
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.072,
                        width: (MediaQuery.of(context).size.width * 0.62) - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //team1 scores
                            quarterScores('team 1'),

                            //team2 scores
                            quarterScores('team 2')
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )),
  );
}

Widget mlbBoxScore(context) {
  Widget innings() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '1',
        ),
        Text(
          '2',
        ),
        Text(
          '3',
        ),
        Text(
          '4',
        ),
        Text(
          '5',
        ),
        Text(
          '6',
        ),
        Text(
          '7',
        ),
        Text(
          '8',
        ),
        Text(
          '9',
        ),
        Text(
          'R',
        ),
        Text(
          'H',
        ),
        Text(
          'E',
        ),
      ],
    );
  }

  Widget inningScores(String team) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '2',
        ),
        Text(
          '2',
        ),
        Text(
          '2',
        ),
        Text(
          '2',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
        Text(
          '8',
        ),
      ],
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[350],
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.28,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    const Padding(
                      padding: EdgeInsets.only(top: 2.0, left: 10),
                      child: Text(
                        'Team',
                      ),
                    ),

                    //divider
                    const Divider(
                      color: Colors.black,
                    ),

                    //teams
                    boxscoreTeams('team1', 'team2', context)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: (MediaQuery.of(context).size.width * 0.72) - 30,
                child: Column(
                  children: [
                    //quarters
                    Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: innings()),

                    //divider
                    const Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.072,
                      width: (MediaQuery.of(context).size.width * 0.72) - 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //team1 scores
                          inningScores('team 1'),

                          //team2 scores
                          inningScores('team 2')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
