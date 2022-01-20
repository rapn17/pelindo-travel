import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/tiket/component/body_empty_tiket.dart';
import 'package:pelindo_travel/screen/tiket/component/body_have_tiket.dart';

import '../../app_color.dart';

class TiketScreen extends StatefulWidget {
  const TiketScreen({Key? key}) : super(key: key);

  @override
  _TiketScreenState createState() => _TiketScreenState();
}

class _TiketScreenState extends State<TiketScreen> {
  bool haveTiket= true;

  var body = [
    BodyEmptyTiket(),
    BodyHaveTiket(),
  ];

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
      body: haveTiket? body[1] : body[0],
    );
  }
}
