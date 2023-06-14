import 'package:tylor_app/models/measure.dart';
import 'package:flutter/material.dart';
import '../models/hive_data.dart';
import 'measure_buttons.dart';
import 'measure_text_field.dart';

class LowerGarmentsMeasureTableWidget extends StatefulWidget
{
  final TextEditingController nameController;
  final TextEditingController cellnumController;

  const LowerGarmentsMeasureTableWidget(
  {
    super.key, 
    required this.nameController, 
    required this.cellnumController
  });

  @override
  State<LowerGarmentsMeasureTableWidget> createState() => _LowerGarmentsMeasureTableWidgetState();
}

class _LowerGarmentsMeasureTableWidgetState extends State<LowerGarmentsMeasureTableWidget> 
{
  //Lower garment measures
  final TextEditingController modelName = TextEditingController();
  final TextEditingController hightSize = TextEditingController();
  final TextEditingController sholderSize = TextEditingController();
  final TextEditingController sleveeSize = TextEditingController();
  final TextEditingController sleveeSize1 = TextEditingController();
  final TextEditingController nickSize = TextEditingController();
  final TextEditingController armpitSize = TextEditingController();

  final HiveData hiveData = const HiveData();

  @override
  void dispose() 
  {
    modelName.dispose();
    hightSize.dispose();
    sholderSize.dispose();
    sleveeSize.dispose();
    sleveeSize1.dispose();
    nickSize.dispose();
    armpitSize.dispose();

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
            controller: modelName,
            text: 'نام مدل لباس را وارد کنید',
            keyboardType: TextInputType.text
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: hightSize,
            text: 'اندازه قد را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sholderSize,
            text: 'اندازه شانه را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleveeSize,
            text: 'اندازه آستین را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const SizedBox(height: 10),

          MeasureTextField(
            controller: sleveeSize1,
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
            controller: armpitSize,
            text: 'اندازه بقل را وارد کنید',
            keyboardType: TextInputType.number
          ),

          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),

          MyButton(
            text: 'ذخیره کردن',
            onPressed: () async
            {
              await hiveData.saveSuitMeasure(SuitMeasures(
                name: widget.nameController.text, 
                cellNumber: widget.cellnumController.text, 
                waistLower: modelName.text,
                hipLower: hightSize.text,
                leg: sholderSize.text,
                knee: sleveeSize.text,
                boot: sleveeSize1.text,
                heightLower: nickSize.text,
                crotch: armpitSize.text
                )
              );

              widget.nameController.clear();
              widget.cellnumController.clear();
              modelName.clear();
              hightSize.clear();
              sholderSize.clear();
              sleveeSize.clear();
              sleveeSize1.clear();
              nickSize.clear();
              armpitSize.clear();
            },
          )
        ],
      ),
    );
  }
}