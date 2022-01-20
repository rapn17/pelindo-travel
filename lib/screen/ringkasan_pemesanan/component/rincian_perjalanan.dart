import 'package:flutter/material.dart';


class RincianPerjalanan extends StatelessWidget {
  final namaPenumpang;
  final kelasTiket;
  final jumlahPenumpang;
  final hargaTotal;
  const RincianPerjalanan({
    Key? key,
    required this.namaPenumpang,
    required this.kelasTiket,
    required this.jumlahPenumpang,
    required this.hargaTotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: namaPenumpang.length == 1
                    ? Text(
                        ': ' + namaPenumpang[0]['nama'].toString(),
                        style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ':',
                            style: TextStyle(
                              color: Color(0xff999999),
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Column(
                            children: [
                              ...List.generate(
                                namaPenumpang.length,
                                (index) {
                                  return Text(
                                    '● ' +
                                        namaPenumpang[index]['nama'].toString(),
                                    style: TextStyle(
                                      color: Color(0xff999999),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
                                    ),
                                  );
                                },
                              ),
                            ],
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
                'Kelas Tiket',
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
                  ': $kelasTiket',
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
                  ': $jumlahPenumpang Orang',
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
                'Harga Total TIket',
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
                  ': Rp. $hargaTotal',
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
      ],
    );
  }
}