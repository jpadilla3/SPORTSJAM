import 'package:flutter/material.dart';

Widget heading(context, String title) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.075,
    color: Colors.grey[350],
    child: Text(
      title,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}
