import 'package:flutter/material.dart';
import '../screens/add_measure_screen.dart';

class DialogBox extends StatelessWidget 
{
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) 
  {
    bool inferior;
    
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('چه نوع لباس میخواهید سفارش دهید؟'),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () 
                  {
                    inferior = false;

                    Navigator.of(context).pop();

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MeasuresScreen(inferior: inferior),
                    ));
                  },
                  child: const Text('افغانی')
                ),

                ElevatedButton(
                  onPressed: () {
                    inferior = true;

                    Navigator.of(context).pop();

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                        MeasuresScreen(inferior: inferior),
                    ));
                  },
                  child: const Text('دریشی')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
