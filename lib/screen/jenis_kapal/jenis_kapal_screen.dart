import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/date_tab_widget.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/kapal_dlu_modal.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/kapal_pelni_modal.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/kendaraan_modal.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/orange_dropdown_button.dart';
import 'package:pelindo_travel/screen/jenis_kapal/component/pesan_button.dart';
import 'package:pelindo_travel/screen/pemesanan/pemesanan_screen.dart';
import 'package:pelindo_travel/size_config.dart';

class JenisKapalScreen extends StatefulWidget {
  const JenisKapalScreen({Key? key}) : super(key: key);

  @override
  _JenisKapalScreenState createState() => _JenisKapalScreenState();
}

class _JenisKapalScreenState extends State<JenisKapalScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          'Surabaya - Makasar',
          style: TextStyle(
            color: Color(0xff181D2D),
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 0,
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.list_rounded, color: Color(0xff181D2D),),),
        // ],
      ),
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(35)),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VerticalSpacing(),
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //Tab
                  DateTabInActive(
                    date: '15',
                    day: 'SAB',
                  ),
                  DateTabInActive(
                    date: '16',
                    day: 'MIN',
                  ),
                  DateTabActive(
                    date: '17',
                    day: 'SEN',
                  ),
                  DateTabInActive(
                    date: '18',
                    day: 'SEL',
                  ),
                  DateTabInActive(
                    date: '19',
                    day: 'RAB',
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Kapal Pelni
                    Container(
                      margin: EdgeInsets.only(bottom: 32),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kapal PELNI',
                                style: TextStyle(
                                  color: Color(0xff59597C),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              Text(
                                '1H 4J 0M \nLangsung',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Text(
                            '\t\t\t(KM.DOROLONGGA)',
                            style: TextStyle(
                              color: Color(0xff59597C),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Arial',
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(8),
                                right: getProportionateScreenWidth(21)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    '17 Okt 21,  09.00 - 18 Okt 21, 13.00',
                                    style: TextStyle(
                                      color: Color(0xff707070),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Arial',
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    'Tersedia sisa 5',
                                    style: TextStyle(
                                      color: Color(0xff979797),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Arial',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            endIndent: getProportionateScreenWidth(17),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OrangeDropdown(
                                  text: 'Kelas Kapal',
                                  onPress: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return buildModalKapalPelni(context);
                                      },
                                    );
                                  },
                                ),
                                PesanButton(
                                  onPress: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/pemesanan',
                                      arguments: PemesananScreen(
                                          namaKapal:
                                              'Kapal PELNI (KM. DOROLONGGA)'),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Kapal Dharma Lautan Utama
                    Container(
                      margin: EdgeInsets.only(bottom: 32),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kapal Dharma Lautan Utama',
                                style: TextStyle(
                                  color: Color(0xff59597C),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              Text(
                                '1H 4J 0M \nLangsung',
                                style: TextStyle(
                                  color: Color(0xff979797),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                                maxLines: 2,
                              ),
                            ],
                          ),
                          Text(
                            '\t\t\t(KM. Dharma kencana 7)',
                            style: TextStyle(
                              color: Color(0xff59597C),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Arial',
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(8),
                                right: getProportionateScreenWidth(21)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Text(
                                    '17 Okt 21,  09.00 - 18 Okt 21, 13.00',
                                    style: TextStyle(
                                      color: Color(0xff707070),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Arial',
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    'Tersedia sisa 3',
                                    style: TextStyle(
                                      color: Color(0xff979797),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Arial',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            endIndent: getProportionateScreenWidth(17),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Wrap(
                                    runSpacing: 5,
                                    children: [
                                      OrangeDropdown(
                                        text: 'Kelas Kapal',
                                        onPress: () {
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return buildModalKapalDLU(
                                                  context);
                                            },
                                          );
                                        },
                                      ),
                                      OrangeDropdown(
                                        text: 'Kendaraan',
                                        onPress: () {
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return buildModalKendaraan(
                                                  context);
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: PesanButton(
                                    onPress: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/pemesanan',
                                        arguments: PemesananScreen(
                                            namaKapal:
                                                'Kapal PELNI (KM. DOROLONGGA)'),
                                      );
                                    },
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildModalKapalPelni(context) {
  return makeDismissible(
    context,
    child: ModalKapalPelni(),
  );
}

Widget buildModalKapalDLU(context) {
  return makeDismissible(
    context,
    child: ModalKapalDLU(),
  );
}

Widget buildModalKendaraan(context) {
  return makeDismissible(
    context,
    child: ModalKendaraan(),
  );
}

Widget makeDismissible(context, {required Widget child}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(onTap: () {}, child: child),
  );
}
