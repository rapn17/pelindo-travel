import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/pemesanan/component/jumlah_tiket_field.dart';
import 'package:pelindo_travel/screen/pemesanan/component/modal_kelas_kapal.dart';
import 'package:pelindo_travel/screen/pemesanan/component/modal_pilih_kendaraan.dart';
import 'package:pelindo_travel/size_config.dart';

import '../../app_color.dart';

class PemesananScreen extends StatefulWidget {
  final idKapal;
  const PemesananScreen({Key? key, required this.idKapal}) : super(key: key);

  @override
  _PemesananScreenState createState() => _PemesananScreenState();
}

class _PemesananScreenState extends State<PemesananScreen> {
  TextEditingController _jmlDewasa = TextEditingController(text: '0');
  TextEditingController _jmlBayi = TextEditingController(text: '0');

  String? namaKapal;
  var kapalItem;
  String? namaKelas = 'EK - A';
  var hargaKelasBayi = 80000;
  var hargaKelasDewasa = 800000;
  List? kelasItem;
  List? selectedKelas;
  String? namaKendaraan = 'Sepeda';
  var hargaKendaraan = 0;
  List? kendaraanItem;
  // var selectedKendaraan;

  var allKapal = [
    {
      "idKapal": 1,
      "type": 1,
      "namaType": 'Kapal PELNI',
      "namaKapal": '(KM. DOROLONGGA)',
    },
    {
      "idKapal": 2,
      "type": 2,
      "namaType": 'Kapal Dharma Lautan Utama',
      "namaKapal": '(KM. Dharma Kencana 7)',
    },
  ];

  var kelasPelni = [
    {
      "namaKelas": "EK-A",
      "bayi": 80000,
      "dewasa": 800000,
    },
    {
      "namaKelas": "EK-B",
      "bayi": 60000,
      "dewasa": 500000,
    },
    {
      "namaKelas": "EK-E",
      "bayi": 32000,
      "dewasa": 149000,
    },
  ];

  var kelasDlu = [
    {
      "namaKelas": "VIP",
      "bayi": 75000,
      "dewasa": 460000,
    },
    {
      "namaKelas": "1",
      "bayi": 65000,
      "dewasa": 410000,
    },
    {
      "namaKelas": "2",
      "bayi": 65000,
      "dewasa": 360000,
    },
    {
      "namaKelas": "3",
      "bayi": 60000,
      "dewasa": 320000,
    }
  ];

  var allKendaraan = [
    {
      "namaKendaraan": "Sepeda",
      "harga": 115000,
    },
    {
      "namaKendaraan": "Sepeda Motor 2.A (s.d 249CC)",
      "harga": 500000,
    },
    {
      "namaKendaraan": "Truk Sedang 4.B - Kosong",
      "harga": 3440000,
    },
    {
      "namaKendaraan": "Kend. Kecil 3.A (s.d 2000CC)",
      "harga": 1770000,
    },
    {
      "namaKendaraan": "Kend. Kecil 3.B (2001CC ke Atas)",
      "harga": 3000000,
    },
    {
      "namaKendaraan": "Truk Sedang 4.B - Kosong",
      "harga": 3440000,
    },
  ];

  _getKapalItem(idKapal) {
    setState(() {
      if (idKapal == 1) {
        kapalItem = allKapal[0];
        kelasItem = kelasPelni;
        kendaraanItem = [];
      } else {
        kapalItem = allKapal[1];
        kelasItem = kelasDlu;
        kendaraanItem = allKendaraan;
        hargaKendaraan = 115000;
      }
      namaKapal = kapalItem['namaType'] + ' ' + kapalItem['namaKapal'];
    });
  }

  refresh() {
    setState(() {});
  }

  getTotalHarga() {
    var totalHarga = (hargaKelasDewasa * int.parse(_jmlDewasa.text)) +
        (hargaKelasBayi * int.parse(_jmlBayi.text)) +
        hargaKendaraan;

    return totalHarga.toString();
  }

  @override
  void initState() {
    _getKapalItem(widget.idKapal);
    super.initState();
  }

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
          'Pemesanan',
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
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(57)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  //nama Kapal
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Nama Kapal',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
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
                    child: Text(
                      namaKapal.toString(),
                      style: TextStyle(
                        color: Color(0xff59597C),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: 10),
                  //jumlah tiket
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                'Dewasa',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: JumlahTiketField(
                                textController: _jmlDewasa,
                                refreshState: refresh,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                'Bayi (0-23 Bulan)',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: JumlahTiketField(
                                textController: _jmlBayi,
                                refreshState: refresh,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  //kelas Tiket
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Kelas Tiket',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return buildModalKelasKapal(context, kelasItem);
                        },
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
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
                          Text(
                            'Pilih Jenis Kelas Tiket',
                            style: TextStyle(
                              color: Color(0xff88879C),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff88879C),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  //Jenis Kendaraan
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Jenis Kendaraan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (kendaraanItem!.length != 0) {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return buildModalKendaraan(context, kendaraanItem);
                          },
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
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
                      child: kendaraanItem!.length != 0
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Pilih Jenis Kelas Kendaraan',
                                  style: TextStyle(
                                    color: Color(0xff88879C),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Poppins',
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff88879C),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    // border: Border.all(
                                    //     color: Color(0xffCCD2E3), width: 2),
                                    image: DecorationImage(
                                      // fit: BoxFit.fill,
                                      image:
                                          AssetImage('assets/icons/info.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Jenis  Kendaraan pada Kapal ini tidak tersedia ',
                                  style: TextStyle(
                                    color: Color(0xff88879C),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                    ),
                  ),
                  VerticalSpacing(),
                  //Total Pemesanan
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      'Total Pemesanan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 5),
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
                              _jmlDewasa.text,
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
                            _jmlDewasa.text == '0'
                                ? 'Rp -'
                                : 'Rp ' +
                                    (int.parse(_jmlDewasa.text) *
                                            hargaKelasDewasa)
                                        .toString(),
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
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 5),
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
                              _jmlBayi.text,
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
                            _jmlBayi.text == '0'
                                ? 'Rp -'
                                : 'Rp ' +
                                    (int.parse(_jmlBayi.text) * hargaKelasBayi)
                                        .toString(),
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
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 5),
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
                            hargaKendaraan == 0
                                ? 'Rp -'
                                : 'Rp ' + hargaKendaraan.toString(),
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
                    padding: EdgeInsets.only(
                        left: 15, top: 15, bottom: 15, right: 5),
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
                            'Rp ' + getTotalHarga(),
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
                ],
              ),
            ),
            VerticalSpacing(),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                  right: getProportionateScreenWidth(43), bottom: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/input-penumpang');
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

  Widget buildModalKelasKapal(context, kelasItem) {
    return makeDismissible(
      context,
      child: ModalKelasKapal(
        kelasItem: kelasItem,
        // selectKelasTiket: refresh,
      ),
    );
  }

  Widget buildModalKendaraan(context, kendaraanItem) {
    return makeDismissible(context,
        child: ModalPilihKendaraan(kendaraanItem: kendaraanItem));
  }

  Widget makeDismissible(context, {required Widget child}) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(onTap: () {}, child: child),
    );
  }
}
