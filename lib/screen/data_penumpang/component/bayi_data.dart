import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:pelindo_travel/screen/data_penumpang/component/data_penumpang_item.dart';
import 'package:pelindo_travel/screen/data_penumpang/component/form_data_penumpang.dart';

import '../../../app_color.dart';
import 'dart:math' as math;

class BayiData extends StatelessWidget {
  const BayiData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      initialExpanded: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: ScrollOnExpand(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToExpand: true,
                    tapBodyToCollapse: true,
                    hasIcon: false,
                  ),
                  header: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorSecondary,
                                  ),
                                  child: Image.asset(
                                      'assets/icons/emoji-happy.png'),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '2 Bayi',
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
                          ExpandableIcon(
                            theme: const ExpandableThemeData(
                              expandIcon: Icons.keyboard_arrow_down,
                              collapseIcon: Icons.keyboard_arrow_up,
                              iconColor: Colors.black,
                              iconSize: 28.0,
                              iconRotationAngle: math.pi / 2,
                              iconPadding: EdgeInsets.only(right: 5),
                              hasIcon: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  collapsed: Container(),
                  expanded: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Divider(),
                        DataPenumpangItem(
                          nama: 'Adek Bayu',
                          jenisIdentitas: 'KK',
                          noIdentitas: '3589893405890002',
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/form-input-penumpang',
                              arguments: FormINputDataPenumpang(isDewasa: false),
                            );
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: colorSecondary,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Tambah data penumpang',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class BayiDataItem extends StatelessWidget {
//   const BayiDataItem({
//     Key? key,
//   }) : super(key: key);

//   void menuSelection(String value) {
//     switch (value) {
//       case 'Edit':
//         //
//         break;
//       case 'Delete':
//         //
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ListTile(
//           title: Row(
//             children: [
//               Container(
//                 width: 55,
//                 child: Text(
//                   'Nama',
//                   style: TextStyle(
//                     color: Color(0xff333E63),
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     fontFamily: 'Arial',
//                   ),
//                 ),
//               ),
//               Text(
//                 ': Sri Rahayu',
//                 style: TextStyle(
//                   color: Color(0xff333E63),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: 'Arial',
//                 ),
//               ),
//             ],
//           ),
//           subtitle: Row(
//             children: [
//               Container(
//                 width: 55,
//                 child: Text(
//                   // 'Tanggal \nLahir',
//                   'No. KK',
//                   style: TextStyle(
//                     color: Color(0xff333E63),
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     fontFamily: 'Arial',
//                   ),
//                 ),
//               ),
//               Text(
//                 // ': 19 September 2021',
//                 ': 37683745670003',
//                 style: TextStyle(
//                   color: Color(0xff333E63),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: 'Arial',
//                 ),
//               ),
//             ],
//           ),
//           trailing: PopupMenuButton<String>(
//             padding: EdgeInsets.zero,
//             icon: Icon(Icons.edit),
//             onSelected: menuSelection,
//             itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//               const PopupMenuItem<String>(
//                 value: 'Edit',
//                 child: Text('Edit'),
//               ),
//               const PopupMenuItem<String>(
//                 value: 'Hapus',
//                 child: Text(
//                   'Hapus',
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             ],
//           ),
//           // IconButton(
//           //   onPressed: () {},
//           //   icon: Icon(Icons.edit),
//           // ),
//         ),
//         Divider(),
//       ],
//     );
//   }
// }
