import 'package:flutter/material.dart';

Widget backGroundWidget(Widget child) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.fill)),
    child: child,
  );
}
