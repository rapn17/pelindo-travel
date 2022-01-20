import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelindo_travel/app_color.dart';
import 'package:pelindo_travel/screen/data_penumpang/component/bayi_data.dart';
import 'package:pelindo_travel/screen/data_penumpang/component/dewasa_data.dart';

import '../../size_config.dart';

class InputPenumpangScreen extends StatefulWidget {
  const InputPenumpangScreen({Key? key}) : super(key: key);

  @override
  _InputPenumpangScreenState createState() => _InputPenumpangScreenState();
}

class _InputPenumpangScreenState extends State<InputPenumpangScreen> {
  bool isChecked = false;

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
          'Input Data Penumpang',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/users.svg',
                      width: 20, height: 20, color: colorSecondary),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Detail Penumpang',
                    style: TextStyle(
                      color: Color(0xff333E63),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            ),
            DewasaData(),
            BayiData(),
            VerticalSpacing(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(0,-15),
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 23),
                    child: Text(
                      'Dengan ini saya setuju dan mematuhi pesyaratan dan ketentuan reservasi dari PT. Pelabuhan Indonesia ( persero ), termasuk permbayaran dan mematuhi semua aturan dan pembatasan mengenai ketersediaan tarif atau jasa.',
                      style: TextStyle(
                        color: Color(0xff9F9FB9),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                  right: getProportionateScreenWidth(20), bottom: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ringkasan-pemesanan');
                },
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'LANJUT',
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
            ),
          ],
        ),
      ),
    );
  }
}
