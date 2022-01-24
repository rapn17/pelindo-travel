import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/data_penumpang/component/form_data_penumpang.dart';
import 'package:pelindo_travel/screen/data_penumpang/input_penumpang_screen.dart';
import 'package:pelindo_travel/screen/forgot/forgot_screen.dart';
import 'package:pelindo_travel/screen/home/home_screen.dart';
import 'package:pelindo_travel/screen/jenis_kapal/jenis_kapal_screen.dart';
import 'package:pelindo_travel/screen/login/login_screen.dart';
import 'package:pelindo_travel/screen/onboard/onboard_screen.dart';
import 'package:pelindo_travel/screen/otp/otp_screen.dart';
import 'package:pelindo_travel/screen/pembayaran/pembayaran_screen.dart';
import 'package:pelindo_travel/screen/pemesanan/pemesanan_screen.dart';
import 'package:pelindo_travel/screen/profil/profil_screen.dart';
import 'package:pelindo_travel/screen/register/register_screen.dart';
import 'package:pelindo_travel/screen/ringkasan_pemesanan/ringkasan_pemesanan_screen.dart';
import 'package:pelindo_travel/screen/riwayat/riwayat_screen.dart';
import 'package:pelindo_travel/screen/tiket/detail_tiket_screen.dart';

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
          return const OtpScreen();
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
    case '/pemesanan':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          final args = settings.arguments as PemesananScreen;
          return PemesananScreen(idKapal: args.idKapal);
        },
      );
    case '/input-penumpang':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          // final args = settings.arguments as InputPenumpangScreen;
          return InputPenumpangScreen();
        },
      );
    case '/pembayaran':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return PembayaranScreen();
        },
      );
    case '/riwayat':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const RiwayatScreen();
        },
      );
    case '/profil':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const ProfilScreen();
        },
      );
    case '/form-input-penumpang':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          final args = settings.arguments as FormINputDataPenumpang;
          return FormINputDataPenumpang(isDewasa: args.isDewasa,);
        },
      );
    case '/ringkasan-pemesanan':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const RingkasanPesananScreen();
        },
      );
    case '/detail-tiket':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const DetailTiketScreen();
        },
      );
    default:
  }
}
