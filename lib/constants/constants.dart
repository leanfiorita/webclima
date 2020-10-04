import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 31, 229, 146);

const textColor = Color(0xFF707070);

const textLightColor = Color(0xFF555555);

const defaultPadding = 20.0;

final defaultShadow = BoxShadow(
  offset: Offset(0, 30),
  blurRadius: 30,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final defaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

const defaultInputDecorationTheme = InputDecorationTheme(
  border: defaultOutlineInputBorder,
  enabledBorder: defaultOutlineInputBorder,
  focusedBorder: defaultOutlineInputBorder,
);

const defaultOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
  color: Color(0xFFCEE4FD),
));
