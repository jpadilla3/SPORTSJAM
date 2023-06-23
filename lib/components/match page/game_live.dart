import 'dart:math' as math;

import 'package:flutter/material.dart';

Widget mlbLive(context) {
//balls, strikes, and outs
  Widget countStats(context, String type, String count, bool pos, bool pos2) {
    return Container(
        alignment: pos
            ? Alignment.center
            : (pos2 ? Alignment.centerLeft : Alignment.bottomRight),
        width: (((MediaQuery.of(context).size.width / 2) - 15) / 2) / 3,
        height: MediaQuery.of(context).size.height * 0.12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(type), Text(count)],
        ));
  }

  Widget bases(context, bool onBase) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: onBase ? Colors.black : null),
        width: 30,
        height: 30,
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 6),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[350],
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Row(
        children: [
          //diamond & count
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              width: (MediaQuery.of(context).size.width / 2) - 15,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: ((MediaQuery.of(context).size.width / 2) - 15) / 2,
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //second base
                            bases(context, false)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //third base
                            bases(context, true),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.002,
                            ),

                            //first base
                            bases(context, true)
                          ],
                        )
                      ],
                    ),
                  ),

                  //balls
                  countStats(context, 'B', '3', false, false),

                  //Strikes
                  countStats(context, 'S', '2', true, true),

                  //outs
                  countStats(context, 'O', '2', false, true)
                ],
              )),

          //pitcher and batter
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: (MediaQuery.of(context).size.width / 2) - 15,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text('Pitching:'), Text('Player 1')],
                      ),
                      Column(
                        children: [Text('Pitches:'), Text('40')],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [Text('Batting:'), Text('Player 2')],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.02),
                        child: const Column(
                          children: [Text('AVG:'), Text('.401')],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
