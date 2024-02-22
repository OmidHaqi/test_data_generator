import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_data_gen/views/pages/my_splash.dart';
import 'package:test_data_gen/views/res/themes.dart';
import 'package:window_manager/window_manager.dart';

class MyApp extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({
    super.key,
    this.savedThemeMode,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(255, 204, 238, 221),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color.fromARGB(255, 204, 238, 221),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return AdaptiveTheme(
        light: lightTheme(),
        dark: darkTheme(),
        initial: widget.savedThemeMode ?? AdaptiveThemeMode.system,
        builder: (light, dark) => MaterialApp(
              title: 'Test data generator app',
              theme: light,
              darkTheme: dark,
              debugShowCheckedModeBanner: false,
              home: const MySplash(),
            ));
  }
}
