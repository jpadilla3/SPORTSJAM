import 'package:flutter/material.dart';
import 'package:sportsjam/components/appbar.dart';
import 'package:sportsjam/components/match_scores.dart';
import 'package:sportsjam/components/sport_sections.dart';
import 'package:sportsjam/utils/mlb_api.dart';

import '../data/mlb data/mlb_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MlbGame> mlbGames = [];

  @override
  void initState() {
    super.initState();
    fetchMlbGames();
  }

  Future<void> fetchMlbGames() async {
    final response = await MlbApi.fetchGames();
    setState(() {
      mlbGames = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: appbar()),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //my teams section
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.145,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Text(
                            "My Teams",
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.11,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 0,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: myTeams(context, index));
                        },
                      ),
                    )
                  ],
                ),
              ),
              //sports Section
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, right: 20, bottom: 10),
                child: Column(
                  children: [
                    nbaSection(context, 0),
                    nflSection(context, 0),
                    mlbSection(context, mlbGames.length, mlbGames)
                  ],
                ),
              ),

              //NFL section
            ],
          ),
        ));
  }
}
