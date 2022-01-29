import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pelindo_travel/app_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  isViewed = _prefs.getInt('onBoard') ?? 0;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pelindo Travel',
      initialRoute: isViewed != 1 ? initialRoute : '/home',
      onGenerateRoute: appRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('id'),
      ],
    );
  }
}