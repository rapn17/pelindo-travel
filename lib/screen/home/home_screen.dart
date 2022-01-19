import 'package:flutter/material.dart';
import 'package:pelindo_travel/app_color.dart';
import 'package:pelindo_travel/screen/akun/akun_screen.dart';
import 'package:pelindo_travel/screen/beranda/beranda_screen.dart';
import 'package:pelindo_travel/screen/home/component/BottomNavBarWidget.dart';
import 'package:pelindo_travel/screen/tiket/tiket_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = [
    BerandaScreen(),
    TiketScreen(),
    AkunScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavBarWidget(
        backgroundColor: Colors.white,
        color: Colors.grey,
        selectedColor: colorPrimary,
        onTabSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavBarWidgetItem(
              iconData: 'assets/icons/home.svg', text: 'Beranda'),
          BottomNavBarWidgetItem(
              iconData: 'assets/icons/tiket.svg', text: 'Tiket'),
          BottomNavBarWidgetItem(
              iconData: 'assets/icons/akun.svg', text: 'Akun'),
        ],
      ),
    );
  }
}
