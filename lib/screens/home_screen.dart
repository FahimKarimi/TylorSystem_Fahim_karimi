import 'package:tylor_app/screens/client_list_screen.dart';
import 'package:tylor_app/screens/motivational_about_screen.dart';
import 'package:tylor_app/widgets/dialog_box.dart';
import 'package:tylor_app/widgets/measure_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) 
  {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 245, 222),
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: const [
                        Text(
                          'به سیستم خیاطی خوش آمدید',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 15),
                        Text(
                          'با این سیستم شما میتوانید سفارشات مشتریان تان را به راحتی مدیریت کنید',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ],
                    )
                  ),

                  Column(
                    children: [
                      MyButton(
                        text: 'اضافه کردن مشتری',
                        onPressed: () 
                        {
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return const DialogBox();
                            },
                          );
                        },
                      ),

                      const Padding(padding: EdgeInsets.all(10)),

                      MyButton(
                        text: 'کار ها',
                        onPressed: () 
                        {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ClientListScreen(),
                            )
                          );

                        },
                      ),

                      const Padding(padding: EdgeInsets.all(10)),
                      
                      MyButton(
                        text: 'درباره ما',
                        onPressed: () 
                        {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MotivationalAboutScreen(),
                            )
                          );
                        },
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}