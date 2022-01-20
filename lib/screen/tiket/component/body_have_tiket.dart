import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/ringkasan_pemesanan/component/informasi_kapal.dart';
import 'package:pelindo_travel/screen/tiket/component/data_penumpang_widget.dart';

import '../../../size_config.dart';

class BodyHaveTiket extends StatelessWidget {
  const BodyHaveTiket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        // height: SizeConfig.screenHeight!,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Informasi Kapal',
                style: TextStyle(
                  color: Color(0xff88879C),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
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
                'Nama Penumpang:',
                style: TextStyle(
                  color: Color(0xff047C99),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            DataPenumpangWidget(
              namaPenumpang: 'Sri Rahayu',
              jenisIdentitas: 'KTP',
              nomorIdentitas: '3589893487890002',
              press: () {
                Navigator.pushNamed(context, '/detail-tiket');
              },
            ),
            DataPenumpangWidget(
              namaPenumpang: 'Sri Rahayu',
              jenisIdentitas: 'KTP',
              nomorIdentitas: '3589893487890002',
              press: () {
                Navigator.pushNamed(context, '/detail-tiket');
              },
            ),
            DataPenumpangWidget(
              namaPenumpang: 'Bayu',
              jenisIdentitas: 'KK',
              nomorIdentitas: '3589893487890002',
              press: () {
                Navigator.pushNamed(context, '/detail-tiket');
              },
            ),
          ],
        ),
      ),
    );
  }
}
