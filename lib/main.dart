import 'package:flutter/material.dart';

import 'src/train.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

// void main() async {
//   // Set up the SettingsController, which will glue user settings to multiple
//   // Flutter Widgets.
//   final settingsController = SettingsController(SettingsService());

//   // Load the user's preferred theme while the splash screen is displayed.
//   // This prevents a sudden theme change when the app is first displayed.
//   await settingsController.loadSettings();

//   // Run the app and pass in the SettingsController. The app listens to the
//   // SettingsController for changes, then passes it further down to the
//   // SettingsView.
//   runApp(MyApp(settingsController: settingsController));
//   runApp(TrainRouteScreen());
// }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Train Route App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TrainRouteScreen(), // Set TrainRouteScreen as the home screen
    );
  }
}
