import 'package:flutter/material.dart';

Widget pitching(context, int count) {
  List pitchers1 = ['Padilla', "Martinez", "Belmares"];
  List pitchers2 = [
    'Perez',
    "Ramirez",
    "Kershaw",
    "Griffin",
    "Brown",
    "Stewart"
  ];
  Widget heading(context, String title) {
    return Container(
      color: Colors.grey[350],
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.043,
      width: ((MediaQuery.of(context).size.width * 0.72) - 30) / 7,
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget pitcher(Color color, int index) {
    Widget stats(context, String stat) {
      return Container(
        color: color,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.043,
        width: ((MediaQuery.of(context).size.width * 0.72) - 30) / 7,
        child: Text(stat),
      );
    }

    return Row(
      children: [
        Container(
          color: color,
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.043,
          width: MediaQuery.of(context).size.width * 0.28,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(count == 0 ? pitchers1[index] : pitchers2[index]),
          ),
        ),
        //IP
        stats(context, '2.1'),

        //H
        stats(context, '4'),

        //R
        stats(context, '4'),

        //ER
        stats(context, '4'),

        //BB
        stats(context, '5'),

        //K
        stats(context, '1'),

        //ERA
        stats(context, '3.25')
      ],
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(children: [
      Row(
        children: [
          Container(
            color: Colors.grey[350],
            alignment: Alignment.centerLeft,
            height: MediaQuery.of(context).size.height * 0.043,
            width: MediaQuery.of(context).size.width * 0.28,
            child: const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                'PITCHERS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),

          //IP
          heading(context, 'IP'),

          //H
          heading(context, "H"),

          //R
          heading(context, "R"),

          //ER
          heading(context, "ER"),

          //BB
          heading(context, "BB"),

          //K
          heading(context, 'K'),

          //ERA
          heading(context, "ERA"),
        ],
      ),
      const Divider(
        color: Colors.black,
        thickness: 1,
        height: 0,
      ),

      //list of pitchers
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: count == 0 ? pitchers1.length : pitchers2.length,
          itemBuilder: (context, int index) {
            Color color =
                index.isOdd ? Colors.grey.shade300 : Colors.grey.shade400;
            return pitcher(color, index);
          }),
    ]),
  );
}

Widget hitting(context, int count) {
  List hitter2 = ['Padilla', "Martinez", "Belmares"];
  List hitter1 = [
    'Perez',
    "Ramirez",
  ];

  Widget heading(context, String title) {
    return Container(
      color: Colors.grey[350],
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.043,
      width: ((MediaQuery.of(context).size.width * 0.72) - 30) / 7,
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget hitter(Color color, int index) {
    Widget stats(context, String stat) {
      return Container(
        color: color,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.043,
        width: ((MediaQuery.of(context).size.width * 0.72) - 30) / 7,
        child: Text(stat),
      );
    }

    return Row(
      children: [
        Container(
          color: color,
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height * 0.043,
          width: MediaQuery.of(context).size.width * 0.28,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(count == 0 ? hitter1[index] : hitter2[index]),
          ),
        ),
        //IP
        stats(context, '2.1'),

        //H
        stats(context, '4'),

        //R
        stats(context, '4'),

        //ER
        stats(context, '4'),

        //BB
        stats(context, '5'),

        //K
        stats(context, '1'),

        //ERA
        stats(context, '3.25')
      ],
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(children: [
      Row(
        children: [
          Container(
            color: Colors.grey[350],
            alignment: Alignment.centerLeft,
            height: MediaQuery.of(context).size.height * 0.043,
            width: MediaQuery.of(context).size.width * 0.28,
            child: const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                'HITTERS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),

          //IP
          heading(context, 'AB'),

          //H
          heading(context, "R"),

          //R
          heading(context, "H"),

          //ER
          heading(context, "RBI"),

          //BB
          heading(context, "BB"),

          //K
          heading(context, 'K'),

          //ERA
          heading(context, "AVG"),
        ],
      ),
      const Divider(
        color: Colors.black,
        thickness: 1,
        height: 0,
      ),

      //list of hitters
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: count == 0 ? hitter1.length : hitter2.length,
          itemBuilder: (context, int index) {
            Color color =
                index.isOdd ? Colors.grey.shade300 : Colors.grey.shade400;
            return hitter(color, index);
          }),
    ]),
  );
}
