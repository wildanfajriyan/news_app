import 'package:flutter/material.dart';

enum NewsColors {
  green('Green', Colors.green);

  const NewsColors(this.name, this.color);

  final String name;
  final Color color;
}
