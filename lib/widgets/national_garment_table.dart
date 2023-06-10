import 'package:tylor_app/models/hive_data.dart';
import 'package:tylor_app/models/measure.dart';
import 'package:tylor_app/widgets/measure_text_field.dart';
import 'package:flutter/material.dart';
import 'measure_buttons.dart';

class UpperGarmentsMeasureTableWidget extends StatefulWidget 
{
  final TextEditingController nameController;
  final TextEditingController cellnumController;

  const UpperGarmentsMeasureTableWidget(
  {
    super.key,
    required this.nameController,
    required this.cellnumController
  });

  @override
  State<UpperGarmentsMeasureTableWidget> createState() => _UpperGarmentsMeasureTableWidgetState();
}

class _UpperGarmentsMeasureTableWidgetState extends State<UpperGarmentsMeasureTableWidget> 
{
  final TextEditingController model = TextEditingController();
  final TextEditingController hight = TextEditingController();
  final TextEditingController sholder = TextEditingController();
  final TextEditingController sleeveSize = TextEditingController();
  final TextEditingController sleeveSize1 = TextEditingController();
  final TextEditingController nickSize= TextEditingController();
  final TextEditingController armpit = TextEditingController();
  final TextEditingController back = TextEditingController();
  final TextEditingController waist = TextEditingController();
  final TextEditingController hip = TextEditingController();
  final TextEditingController frontSize = TextEditingController();
  final TextEditingController backSize = TextEditingController();
  final TextEditingController height = TextEditingController();
  final TextEditingController sleeve= TextEditingController();
  final TextEditingController sleeveCircumference= TextEditingController();
  final TextEditingController fist = TextEditingController();

  final HiveData hiveData = const HiveData();

  @override
  void dispose() 
  {
    model.dispose();
    hight.dispose();
    sholder.dispose();
    sleeveSize.dispose();
    sleeveSize1.dispose();
    nickSize.dispose();
    armpit.dispose();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          MeasureTextField(
            controller: model,
            text: 'نام مدل لباس را وارد کنید',
            keyboardType: TextInputType.text
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: hight,
            text: 'اندازه قد را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sholder,
            text: 'اندازه شانه را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleeveSize,
            text: 'اندازه آستین را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleeveSize1,
            text: 'اندازه دهن آستین  را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: nickSize,
            text: 'اندازه یخن را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: armpit,
            text: 'اندازه بغل را وارد کنید',
            keyboardType: TextInputType.number
          ),


          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),

          MyButton(
            text: 'ذخیره کردن',
            onPressed: () async
            {
              await hiveData.saveNationalMeasure(NationalMeasures(
                name: widget.nameController.text, 
                cellNumber: widget.cellnumController.text, 
                shoulder: model.text,
                cotilla: hight.text,
                bust: sholder.text,
                bustCircumference: sleeveSize.text,
                bustHeight: sleeveSize1.text,
                bustSeparation: nickSize.text,
                cleavage: armpit.text,
                back: back.text,
                waist: waist.text,
                hip: hip.text,
                frontSize: frontSize.text,
                backSize: backSize.text,
                height: height.text,
                sleeve: sleeve.text,
                sleeveCircumference: sleeveCircumference.text,
                fist: fist.text
              ));

              widget.nameController.clear();
              widget.cellnumController.clear();
              model.clear();
              hight.clear();
              sholder.clear();
              sleeveSize.clear();
              sleeveSize1.clear();
              nickSize.clear();
              armpit.clear();
            },
          )
        ],
      ),
    );
  }
}