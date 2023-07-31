import 'package:flutter/material.dart';

Scaffold blankLayout({required Widget body}) {
  return Scaffold(body: SafeArea(child: body));
}
