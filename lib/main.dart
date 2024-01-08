import 'package:flutter/material.dart';
import 'package:restaurant_app/app.dart';
import 'package:restaurant_app/core/hive_box.dart';
import 'package:restaurant_app/core/services/notification_service.dart';

void main() async {
  await MainBoxMixin.initHive();

  NotificationService().initNotification();

  runApp(const App());
}
