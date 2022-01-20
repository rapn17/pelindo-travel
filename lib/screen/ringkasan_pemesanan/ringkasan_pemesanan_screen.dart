import 'package:flutter/material.dart';
import 'package:pelindo_travel/app_color.dart';
import 'package:pelindo_travel/screen/ringkasan_pemesanan/component/informasi_kapal.dart';
import 'package:pelindo_travel/screen/ringkasan_pemesanan/component/rincian_pemesan.dart';
import 'package:pelindo_travel/screen/ringkasan_pemesanan/component/rincian_perjalanan.dart';
import 'package:pelindo_travel/size_config.dart';

class RingkasanPesananScreen extends StatefulWidget {
  const RingkasanPesananScreen({Key? key}) : super(key: key);

  @override
  _RingkasanPesananScreenState createState() => _RingkasanPesananScreenState();
}

class _RingkasanPesananScreenState extends State<RingkasanPesananScreen> {
  var jumlahPenumpang = 2;
  var namaPenumpang = [
    {
      "nama": 'Puput',
    },
    {
      "nama": 'Krisna',
    },
  ];

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
          'Ringkasan Pemesanan',
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
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Informasi Kapal',
                style: TextStyle(
                  color: Color(0xff88879C),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
              VerticalSpacing(),
              InformasiKapalWidget(
                kotaAsal: 'Surabaya',
                kotaTujuan: 'Makasar',
                waktu: '1H 4J 0M \nLangsung',
                jenisKapal: 'Kapal PELNI',
                namaKapal: '(KM. DOROLONDA)',
                keberangkatan: '17 Okt 21,  09.00 WIB - 18 Okt 21, 13.00 WIB',
                lokasi: 'Surabaya (Pelabuhan Tanjung Perak)',
              ),
              VerticalSpacing(),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Rincian Pemesan:',
                  style: TextStyle(
                    color: Color(0xff047C99),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              RincianPemesanWidget(
                namaPemesan: 'Krisna Omegap',
                emailPemesan: 'krisnaomegap12@gmail.com',
                noHpPemesan: '083289767895',
              ),
              VerticalSpacing(),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Rincian Perjalanan:',
                  style: TextStyle(
                    color: Color(0xff047C99),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              RincianPerjalanan(
                namaPenumpang: namaPenumpang, 
                kelasTiket: 'EK1-A', 
                jumlahPenumpang: jumlahPenumpang, 
                hargaTotal: '149.000',
              ),
              VerticalSpacing(),
              VerticalSpacing(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pembayaran');
                  },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'LANJUTKAN PEMBAYARAN',
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
      ),
    );
  }
}
