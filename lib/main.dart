import 'package:tylor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/measure.dart';

Future<void> main() async
{
  runApp(MyApp());
  await Hive.initFlutter();
  Hive.registerAdapter(UpperMeasuresAdapter());
  Hive.registerAdapter(LowerMeasuresAdapter());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: HomeScreen(title: 'سیستم خیاطی',),
      ),
    );
  }
}