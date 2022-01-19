import 'package:flutter/material.dart';
import 'package:pelindo_travel/size_config.dart';

import '../../app_color.dart';

class PembayaranScreen extends StatefulWidget {
  const PembayaranScreen({Key? key}) : super(key: key);

  @override
  _PembayaranScreenState createState() => _PembayaranScreenState();
}

class _PembayaranScreenState extends State<PembayaranScreen> {
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
          'Pembayaran',
          style: TextStyle(
            color: Color(0xff181D2D),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacing(),
              Text(
                'Sebelum konfirmasi transfer, silahkan transfer uang sesuai nominal total bayar ke salah satu rekening dibawah ini :',
                style: TextStyle(
                  color: Color(0xff047C99),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image(
                            height: 50,
                            width: 130,
                            image: AssetImage('assets/images/bni.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 4),
                            padding:
                                EdgeInsets.only(left: 5, top: 10, bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xff656F77),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      child: Text(
                                        'No.Rekening ',
                                        style: TextStyle(
                                          color: Color(0xff047C99),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ': 1260272061',
                                      style: TextStyle(
                                        color: Color(0xff047C99),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      child: Text(
                                        'Atas Nama ',
                                        style: TextStyle(
                                          color: Color(0xff047C99),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ': Putri Srirahayu',
                                      style: TextStyle(
                                        color: Color(0xff047C99),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image(
                            height: 50,
                            width: 100,
                            image: AssetImage('assets/images/bri.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 4),
                            padding:
                                EdgeInsets.only(left: 5, top: 10, bottom: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xff656F77),
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      child: Text(
                                        'No.Rekening ',
                                        style: TextStyle(
                                          color: Color(0xff047C99),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ': 499201021147535',
                                      style: TextStyle(
                                        color: Color(0xff047C99),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      child: Text(
                                        'Atas Nama ',
                                        style: TextStyle(
                                          color: Color(0xff047C99),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ': Putri Srirahayu',
                                      style: TextStyle(
                                        color: Color(0xff047C99),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Arial',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacing(),
              Text(
                'Rincian Harga',
                style: TextStyle(
                  color: Color(0xff88879C),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Arial',
                ),
              ),
              VerticalSpacing(),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE8E8E8), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Dewasa',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Color(0xff88879C),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp -',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE8E8E8), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Bayi',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Color(0xff88879C),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp -',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE8E8E8), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Kendaraan',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Color(0xff88879C),
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp -',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE8E8E8), width: 1),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'TOTAL HARGA',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Rp -',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacing(),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Mohon Melakukan Pembayaran Sebesar ',
                      style: TextStyle(
                          color: Color(0xffF35320),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          height: 1.9),
                    ),
                    TextSpan(
                      text: 'Rp 960.000',
                      style: TextStyle(
                          color: Color(0xffF35320),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                          height: 1.9),
                    ),
                    TextSpan(
                      text: ' sebelum tanggal 16 oktober 2021 09.23 WIB',
                      style: TextStyle(
                          color: Color(0xffF35320),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          height: 1.9),
                    ),
                  ],
                ),
              ),
              // Text(
              //   'Mohon Melakukan Pembayaran Sebesar Rp 960.000 sebelum tanggal 16 oktober 2021 09.23 WIB',
              //   style: TextStyle(
              //       color: Color(0xffF35320),
              //       fontSize: 12,
              //       fontWeight: FontWeight.w500,
              //       fontFamily: 'Poppins',
              //       height: 1.9),
              //   textAlign: TextAlign.center,
              // ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return BatalmodalDialog();
                      },
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Color(0xff979797).withOpacity(0.57),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'BATALKAN PESANAN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Arial',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BatalmodalDialog extends StatelessWidget {
  const BatalmodalDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        // width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(25), vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Batalkan Pemesanan',
              style: TextStyle(
                // color: Color(0xff181D2D),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Text(
              'Apakah Anda Yakin Ingin \nMembatalkan pesanan anda?',
              style: TextStyle(
                // color: Color(0xff181D2D),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Color(0xff88879C),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
