import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pelindo_travel/size_config.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({Key? key}) : super(key: key);

  @override
  _RiwayatScreenState createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff85D3FF),
        shadowColor: Color(0xff85D3FF),
        automaticallyImplyLeading: false,
        leadingWidth: 25,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff333E63),
          ),
        ),
        title: Text(
          'Riwayat',
          style: TextStyle(
            color: Color(0xff181D2D),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        height: SizeConfig.screenHeight!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: getProportionateScreenHeight(304),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/riwayat_kosong.png'),
                ),
              ),
            ),
            Spacer(),
            Text(
              'OOPPSS!!!',
              style: TextStyle(
                color: Color(0xff333E63),
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
            VerticalSpacing(),
            Text(
              'Anda belum memiliki Tiket, silahkan \nmelakukan pemesanan tiket terdahulu!!',
              style: TextStyle(
                color: Color(0xff333E63),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                height: 1.9,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
