import 'package:flutter/material.dart';
import 'package:restaurant_app/app.dart';
import 'package:restaurant_app/core/hive_box.dart';

void main() async {
  await MainBoxMixin.initHive();

  runApp(const App());
}
