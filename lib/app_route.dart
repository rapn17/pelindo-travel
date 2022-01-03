import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/forgot/forgot_screen.dart';
import 'package:pelindo_travel/screen/home/home_screen.dart';
import 'package:pelindo_travel/screen/jenis_kapal/jenis_kapal_screen.dart';
import 'package:pelindo_travel/screen/login/login_screen.dart';
import 'package:pelindo_travel/screen/onboard/onboard_screen.dart';
import 'package:pelindo_travel/screen/register/register_screen.dart';
import 'package:pelindo_travel/screen/verifikasi/verifikasi_screen.dart';

String initialRoute = '/';

Route<dynamic>? appRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const OnBoardScreen();
        },
      );
    case '/home':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const HomeScreen();
        },
      );
    case '/login':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const LoginScreen();
        },
      );
    case '/lupa-password':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const ForgotScreen();
        },
      );
    case '/kode-verifikasi':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const VerifikasiScreen();
        },
      );
    case '/daftar':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const RegisterScreen();
        },
      );
    case '/jenis-kapal':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const JenisKapalScreen();
        },
      );
    default:
  }
}