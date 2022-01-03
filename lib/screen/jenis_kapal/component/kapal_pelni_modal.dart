import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ModalKapalPelni extends StatelessWidget {
  const ModalKapalPelni({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(45), vertical: 21),
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
              'Kelas Kapal Pelni',
              style: TextStyle(
                color: Color(0xffD46308),
                fontSize: 15,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          HargaKapalPelni(
            namaKelas: 'Kelas EK1 - A   :',
            hargaBayi: '80.000',
            hargaDewasa: '800.000',
          ),
          HargaKapalPelni(
            namaKelas: 'Kelas EK2 - B   :',
            hargaBayi: '60.000',
            hargaDewasa: '500.000',
          ),
          HargaKapalPelni(
            namaKelas: 'Kelas EKO - E   :',
            hargaBayi: '32.000',
            hargaDewasa: '149.000',
          ),
        ],
      ),
    );
  }
}

class HargaKapalPelni extends StatelessWidget {
  final namaKelas;
  final hargaBayi;
  final hargaDewasa;
  const HargaKapalPelni({
    Key? key,
    required this.namaKelas,
    required this.hargaBayi,
    required this.hargaDewasa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(
          top: 14,
          bottom: 14,
          left: getProportionateScreenWidth(19),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            namaKelas,
            style: TextStyle(
              color: Color(0xff59597C),
              fontSize: 13,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
          // Expanded(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          Text(
            'Bayi \nRp. $hargaBayi',
            style: TextStyle(
              color: Color(0xff979797),
              fontSize: 11,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
            ),
          ),
          Text(
            'Dewasa \nRp. $hargaDewasa',
            style: TextStyle(
              color: Color(0xff979797),
              fontSize: 11,
              fontWeight: FontWeight.w700,
              fontFamily: 'Arial',
              //     ),
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}