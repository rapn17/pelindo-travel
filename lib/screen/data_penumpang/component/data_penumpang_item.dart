import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/alert_modal_dialog/alert_modal_dialog.dart';

class DataPenumpangItem extends StatelessWidget {
  final nama;
  final jenisIdentitas;
  final noIdentitas;
  const DataPenumpangItem({Key? key,
  required this.nama,
  required this.jenisIdentitas,
  required this.noIdentitas,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Row(
            children: [
              Container(
                width: 50,
                child: Text(
                  'Nama',
                  style: TextStyle(
                    color: Color(0xff333E63),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
              Text(
                ': $nama',
                style: TextStyle(
                  color: Color(0xff333E63),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Arial',
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                width: 50,
                child: Text(
                  '$jenisIdentitas',
                  style: TextStyle(
                    color: Color(0xff333E63),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
              Text(
                ': $noIdentitas',
                style: TextStyle(
                  color: Color(0xff333E63),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Arial',
                ),
              ),
            ],
          ),
          trailing: Container(
            // padding: EdgeInsets.all(1),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertmodalDialogWidget(
                      title: 'Alert',
                      subTitle: 'Yakin Ingin Menghapus',
                      yesClicked: () {},
                    );
                  },
                );
              },
              icon: Text(
                'X',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
