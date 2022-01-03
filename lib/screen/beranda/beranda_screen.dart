import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/beranda/component/berita_widget.dart';
import 'package:pelindo_travel/size_config.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              VerticalSpacing(),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(28),
                    right: getProportionateScreenWidth(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Haloo.. \nMau Pergi ke \nmana kali ini?',
                      style: TextStyle(
                        color: Color(0xff59597C),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Arial',
                      ),
                    ),
                    Container(
                      height: getProportionateScreenHeight(142),
                      width: getProportionateScreenWidth(150),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/ship.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -10),
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        offset: Offset(0, -1),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VerticalSpacing(),
                      Text(
                        'Keberangkatan',
                        style: TextStyle(
                          color: Color(0xff2D9CDB),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Arial',
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'KOTA ASAL',
                                  style: TextStyle(
                                    color: Color(0xff2D9CDB),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: getProportionateScreenWidth(145),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Surabaya',
                                        style: TextStyle(
                                          color: Color(0xff59597C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xff59597C),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 22,
                              child: Image(
                                alignment: Alignment.bottomCenter,
                                width: 20,
                                height: 18,
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/icons/arrow_left_right.png'),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'KOTA TUJUAN',
                                  style: TextStyle(
                                    color: Color(0xff2D9CDB),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: getProportionateScreenWidth(145),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Makasar',
                                        style: TextStyle(
                                          color: Color(0xff59597C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xff59597C),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenHeight(15)),
                        child: Divider(),
                      ),
                      Column(
                        children: [
                          Text(
                            'Tanggal keberangkatan',
                            style: TextStyle(
                              color: Color(0xff2D9CDB),
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Arial',
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: getProportionateScreenWidth(205),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff979797),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Rabu, 17 Okt 2021',
                                style: TextStyle(
                                  color: Color(0xff59597C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 37,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/jenis-kapal');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff0ACDDA),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'CARI TIKET',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Arial',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
              BeritaWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
