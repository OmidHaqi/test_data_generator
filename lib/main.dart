import 'dart:io';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter/material.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
  
  //*fixed window size in desktop!
   await windowManager.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMaximizable(false);
    WindowManager.instance.setResizable(false);
  }
}
