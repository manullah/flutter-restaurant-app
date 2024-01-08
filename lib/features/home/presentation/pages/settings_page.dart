import 'package:flutter/material.dart';
import 'package:restaurant_app/core/services/notification_service.dart';
import 'package:restaurant_app/utils/constants/text_strings.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: TSpacingStyle.paddingApp,
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.schedule),
                  title: Text(TTextStrings.notificationTitle, style: Theme.of(context).textTheme.titleSmall),
                  subtitle: Text(TTextStrings.notificationSubtitle, style: Theme.of(context).textTheme.labelSmall),
                  trailing: Switch(value: false, onChanged: (value) {}),
                  onTap: () {
                    NotificationService().showNotification(title: 'title', body: 'ini boy');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
