import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pelindo_travel/app_color.dart';
import 'package:pelindo_travel/size_config.dart';

// ignore: must_be_immutable
class FormINputDataPenumpang extends StatefulWidget {
  bool? isDewasa;
  FormINputDataPenumpang({Key? key, this.isDewasa}) : super(key: key);

  @override
  _FormINputDataPenumpangState createState() => _FormINputDataPenumpangState();
}

class _FormINputDataPenumpangState extends State<FormINputDataPenumpang> {
  final identitasItems = ['KTP', 'SIM'];
  String? identitas;

  final jenisKItems = ['Laki-laki', 'Perempuan'];
  String? jenisK;

  DateTime date = DateTime.now();
  bool dateSelected = false;
  String getDate() {
    var dateFormated = DateFormat('dd MMMM yyyy', 'id');
    if (dateSelected == false) {
      return dateFormated.format(DateTime.now());
    } else {
      return dateFormated.format(date);
      // return '${date.month}/${date.day}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          'Input Data Penumpang',
          style: TextStyle(
            color: Color(0xff181D2D),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        // height: SizeConfig.screenHeight!,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSpacing(),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: getProportionateScreenWidth(27),
                ),
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
                      child: Image.asset('assets/icons/emoji-happy.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Data Penumpang',
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
              Divider(
                indent: 11,
                endIndent: 11,
              ),
              VerticalSpacing(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(27),
                ),
                child: Form(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Lengkap',
                            style: TextStyle(
                              color: Color(0xff9F9FB9),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Arial',
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              filled: true,
                              fillColor: Colors.grey[100],
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      VerticalSpacing(),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jenis Identitas',
                                  style: TextStyle(
                                    color: Color(0xff9F9FB9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  child: 
                                  widget.isDewasa! ? DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: identitas,
                                      isExpanded: true,
                                      items: identitasItems
                                          .map(buildMenuItem)
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          this.identitas = value.toString();
                                        });
                                      },
                                      hint: Text(
                                        '- Pilih -',
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
                                  )
                                  : Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Text(
                                          'KK',
                                          style: TextStyle(
                                            color: Color(0xff59597C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Arial',
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Icon(Icons.keyboard_arrow_down),
                                    ],),
                                  )
                                ),
                                // TextFormField(
                                //   decoration: InputDecoration(
                                //     floatingLabelBehavior:
                                //         FloatingLabelBehavior.never,
                                //     filled: true,
                                //     fillColor: Colors.grey[100],
                                //     enabledBorder: UnderlineInputBorder(
                                //       borderSide: BorderSide(
                                //           color: Colors.grey.withOpacity(0.5)),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nomor Identitas',
                                  style: TextStyle(
                                    color: Color(0xff9F9FB9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.5)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      VerticalSpacing(),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tanggal Lahir',
                                  style: TextStyle(
                                    color: Color(0xff9F9FB9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    pickDate(context);
                                  },
                                  child: Container(
                                    width: 120,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ),
                                    ),
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
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jenis Kelamin',
                                  style: TextStyle(
                                    color: Color(0xff9F9FB9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Arial',
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      value: jenisK,
                                      isExpanded: true,
                                      items: jenisKItems
                                          .map(buildMenuItem)
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          this.jenisK = value.toString();
                                        });
                                      },
                                      hint: Text(
                                        '- Pilih Jenis Kelamin -',
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      VerticalSpacing(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nomor Telepon',
                            style: TextStyle(
                              color: Color(0xff9F9FB9),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Arial',
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              filled: true,
                              fillColor: Colors.grey[100],
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      VerticalSpacing(),
                      VerticalSpacing(),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'SAVE',
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
                      VerticalSpacing(),
                    ],
                  ),
                ),
              ),
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
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
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
