import 'dart:io';

import 'package:flutter/material.dart';

Widget appbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.red,
    title: const Text(
      'SPORTSJAM',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
    centerTitle: false,
  );
}

Widget appbar2(context) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Platform.isIOS
            ? const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )
            : const Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              )),
    backgroundColor: Colors.red,
    title: const Text(
      'SPORTSJAM',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.bar_chart,
            color: Colors.white,
          ))
    ],
  );
}
