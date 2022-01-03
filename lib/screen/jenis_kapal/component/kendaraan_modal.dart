import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ModalKendaraan extends StatelessWidget {
  const ModalKendaraan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10), vertical: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              'Keendaraan',
              style: TextStyle(
                color: Color(0xffD46308),
                fontSize: 15,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          HargaKendaraan(
            namaKelas: 'Sepeda',
            harga: '115.000',
          ),
          HargaKendaraan(
            namaKelas: 'Sepeda Motor 2.A (s.d 249CC)',
            harga: '500.000',
          ),
          HargaKendaraan(
            namaKelas: 'Truk Sedang 4.B - Kosong',
            harga: '3.440.000/3.500.000',
          ),
          HargaKendaraan(
            namaKelas: 'Kend. Kecil 3.A (s.d 2000CC)',
            harga: '1.770.000 / 2.670.000',
          ),
          HargaKendaraan(
            namaKelas: 'Kend. Kecil 3.B (2001CC ke Atas',
            harga: '3.000.000/ 3.900.000',
          ),
          HargaKendaraan(
            namaKelas: 'Truk Sedang 4.B - Kosong',
            harga: '3.440.000/3.500.000',
          ),
        ],
      ),
    );
  }
}

class HargaKendaraan extends StatelessWidget {
  final namaKelas;
  final harga;
  const HargaKendaraan({
    Key? key,
    required this.namaKelas,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          left: getProportionateScreenWidth(12),
          right: getProportionateScreenWidth(5)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xffE8E8E8), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              namaKelas,
              style: TextStyle(
                color: Color(0xff59597C),
                fontSize: 10,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
              maxLines: 2,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text(
                  ':',
                  style: TextStyle(
                    color: Color(0xff59597C),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  '\t\t\t',
                  style: TextStyle(
                    color: Color(0xff59597C),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  'Rp $harga',
                  style: TextStyle(
                    color: Color(0xff59597C),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
