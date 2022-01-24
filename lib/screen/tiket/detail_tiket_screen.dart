import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../../app_color.dart';

class DetailTiketScreen extends StatelessWidget {
  const DetailTiketScreen({Key? key}) : super(key: key);

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
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'KAPAL PELNI (KM. DOROLONDA)',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'NP-116-F- EKO - E',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 4),
            Container(
              padding: EdgeInsets.only(bottom: 10, left: 20),
              child: Text(
                'Booking Code',
                style: TextStyle(
                  color: Color(0xff656F77),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Center(
              child: BarcodeWidget(
                barcode: Barcode.code128(), // Barcode type and settings
                data: 'WRARB2GO', // Content
                width: 200,
                height: 80,
              ),
            ),
            Divider(thickness: 2),
            Container(
              padding: EdgeInsets.only(bottom: 10, left: 20),
              child: Text(
                'Detail Pemesanan: ',
                style: TextStyle(
                  color: Color(0xff656F77),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Nama Penumpang',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ': Puput',
                                style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                '  (08990876845)',
                                style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Jumlah Penumpang',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            ': 1 Orang',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Waktu Berangkat',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            ': 17 Agustus 2021 (09.00 WIB)',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Waktu Tiba',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            ': 18 Agustus 2021 (13.00 WIB)',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Kelas Kapal',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            ': EK1-A',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        child: Text(
                          'Nama Pemesan',
                          style: TextStyle(
                            color: Color(0xff999999),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ': Krisna Omegap',
                                style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                '  (08990876845)',
                                style: TextStyle(
                                  color: Color(0xff999999),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'SURABAYA',
                      style: TextStyle(
                        color: Color(0xff2596D7),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextSpan(
                      text: '  >  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextSpan(
                      text: 'MAKASSAR',
                      style: TextStyle(
                        color: Color(0xff2596D7),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 4),
          ],
        ),
      ),
    );
  }
}
