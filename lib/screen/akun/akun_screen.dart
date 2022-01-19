import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/akun/component/akun_widget.dart';
import 'package:pelindo_travel/screen/akun/component/logout_modal_dialog.dart';

import '../../app_color.dart';

class AkunScreen extends StatefulWidget {
  const AkunScreen({Key? key}) : super(key: key);

  @override
  _AkunScreenState createState() => _AkunScreenState();
}

class _AkunScreenState extends State<AkunScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        shadowColor: Color(0xff85D3FF),
        automaticallyImplyLeading: false,
        title: Text(
          'Akun',
          style: TextStyle(
            color: Color(0xff181D2D),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            AkunWidget(
              icon: 'profil_icon.png',
              text: 'Profil',
              action: () {
                Navigator.pushNamed(context, '/profil');
              },
            ),
            AkunWidget(
              icon: 'riwayat.png',
              text: 'Riwayat',
              action: () {
                Navigator.pushNamed(context, '/riwayat');
              },
            ),
            AkunWidget(
              icon: 'logout_icon.png',
              text: 'LOGOUT',
              action: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return LogOutmodalDialog();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
