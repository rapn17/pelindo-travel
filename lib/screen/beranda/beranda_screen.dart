import 'package:flutter/material.dart';
import 'package:pelindo_travel/app_color.dart';
import 'package:pelindo_travel/screen/beranda/component/berita_widget.dart';
import 'package:pelindo_travel/size_config.dart';
import 'package:intl/intl.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  final kotaItems = ['Surabaya', 'Makasar'];
  String? kotaAsal;
  String? kotaTujuan;

  final kapalItems = ['Semua', 'PELNI', 'Dharma Lautan Utama'];
  String? namaKapal;

  DateTime date = DateTime.now();
  bool dateSelected = false;
  String getDate() {
    var dateFormated = DateFormat('EEEE, dd MMM yyyy', 'id');
    if (dateSelected == false) {
      return dateFormated.format(DateTime.now());
    } else {
      return dateFormated.format(date);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

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
                                    // vertical: 8,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: kotaAsal,
                                      isExpanded: true,
                                      items:
                                          kotaItems.map(buildMenuItem).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          this.kotaAsal = value.toString();
                                        });
                                      },
                                      hint: Text(
                                        'Pilih Kota',
                                        style: TextStyle(
                                          color: Color(0xff59597C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down),
                                    ),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text(
                                  //       'Surabaya',
                                  //       style: TextStyle(
                                  //         color: Color(0xff59597C),
                                  //         fontSize: 14,
                                  //         fontWeight: FontWeight.w700,
                                  //         fontFamily: 'Arial',
                                  //       ),
                                  //       overflow: TextOverflow.ellipsis,
                                  //     ),
                                  //     Icon(
                                  //       Icons.keyboard_arrow_down,
                                  //       color: Color(0xff59597C),
                                  //     ),
                                  //   ],
                                  // ),
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
                                    // vertical: 8,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff979797),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: kotaTujuan,
                                      isExpanded: true,
                                      items:
                                          kotaItems.map(buildMenuItem).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          this.kotaTujuan = value.toString();
                                        });
                                      },
                                      hint: Text(
                                        'Pilih Kota',
                                        style: TextStyle(
                                          color: Color(0xff59597C),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Arial',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      icon: Icon(Icons.keyboard_arrow_down),
                                    ),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text(
                                  //       'Makasar',
                                  //       style: TextStyle(
                                  //         color: Color(0xff59597C),
                                  //         fontSize: 14,
                                  //         fontWeight: FontWeight.w700,
                                  //         fontFamily: 'Arial',
                                  //       ),
                                  //       overflow: TextOverflow.ellipsis,
                                  //     ),
                                  //     Icon(
                                  //       Icons.keyboard_arrow_down,
                                  //       color: Color(0xff59597C),
                                  //     ),
                                  //   ],
                                  // ),
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
                      // Row(
                      //   children: [
                      // Expanded(
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //         left: getProportionateScreenWidth(20),
                      //         right: getProportionateScreenWidth(15)),
                      //     child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          InkWell(
                            onTap: () {
                              pickDate(context);
                            },
                            child: Container(
                              width: getProportionateScreenWidth(205),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff979797),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  getDate(),
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
                          ),
                        ],
                      ),
                      //   ),
                      // ),
                      // Expanded(
                      //   child: Padding(
                      //     padding: EdgeInsets.only(
                      //         left: getProportionateScreenWidth(15),
                      //         right: getProportionateScreenWidth(20)),
                      //     child: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           'Nama Kapal',
                      //           style: TextStyle(
                      //             color: Color(0xff2D9CDB),
                      //             fontSize: 10,
                      //             fontWeight: FontWeight.w700,
                      //             fontFamily: 'Arial',
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           height: 8,
                      //         ),
                      //         Container(
                      //           padding: EdgeInsets.symmetric(
                      //               // vertical: 8,
                      //                horizontal: 10,),
                      //           decoration: BoxDecoration(
                      //             border: Border.all(
                      //               color: Color(0xff979797),
                      //             ),
                      //           ),
                      //           child: DropdownButtonHideUnderline(
                      //           child: DropdownButton(
                      //             value: namaKapal,
                      //             isExpanded: true,
                      //             items:
                      //                 kapalItems.map(buildMenuItem).toList(),
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 this.namaKapal = value.toString();
                      //               });
                      //             },
                      //             hint: Text(
                      //               'Semua',
                      //               style: TextStyle(
                      //                 color: Color(0xff59597C),
                      //                 fontSize: 14,
                      //                 fontWeight: FontWeight.w700,
                      //                 fontFamily: 'Arial',
                      //               ),
                      //               overflow: TextOverflow.ellipsis,
                      //             ),
                      //             icon: Icon(Icons.keyboard_arrow_down),
                      //           ),
                      //         ),
                      //           // Row(
                      //           //   mainAxisAlignment:
                      //           //       MainAxisAlignment.spaceBetween,
                      //           //   children: [
                      //           //     Text(
                      //           //       'Semua',
                      //           //       style: TextStyle(
                      //           //         color: Color(0xff59597C),
                      //           //         fontSize: 14,
                      //           //         fontWeight: FontWeight.w700,
                      //           //         fontFamily: 'Arial',
                      //           //       ),
                      //           //       overflow: TextOverflow.ellipsis,
                      //           //     ),
                      //           //     Icon(
                      //           //       Icons.keyboard_arrow_down,
                      //           //       color: Color(0xff59597C),
                      //           //     ),
                      //           //   ],
                      //           // ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      //   ],
                      // ),
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
                            color: colorPrimary,
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

  Future pickDate(BuildContext context) async {
    final newDate = await showDatePicker(
      context: context,
      locale: const Locale("id", "ID"),
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 7),
    );

    if (newDate == null) return;

    setState(() {
      date = newDate;
      dateSelected = true;
    });
  }
}

DropdownMenuItem<String> buildMenuItem(String item) {
  return DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
        color: Color(0xff59597C),
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: 'Arial',
      ),
      overflow: TextOverflow.ellipsis,
    ),
  );
}
