import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pelindo_travel/size_config.dart';

import '../../app_color.dart';

class TiketScreen extends StatefulWidget {
  const TiketScreen({Key? key}) : super(key: key);

  @override
  _TiketScreenState createState() => _TiketScreenState();
}

class _TiketScreenState extends State<TiketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        shadowColor: Color(0xff85D3FF),
        automaticallyImplyLeading: false,
        title: Text(
          'TIKET',
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
        height: SizeConfig.screenHeight!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: getProportionateScreenHeight(304),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/tiket_kosong.png'),
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
