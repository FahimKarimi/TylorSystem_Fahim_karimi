import 'package:tylor_app/models/measure.dart';
import 'package:flutter/material.dart';

class UpperMeasureScreen extends StatelessWidget 
{
  final NationalMeasures clientMeasures;

  const UpperMeasureScreen({super.key, required this.clientMeasures});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text('سیستم خیاطی'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  clientMeasures.name,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  clientMeasures.cellNumber,
                  style: const TextStyle(
                    fontSize: 25,
                    //fontWeight: FontWeight.bold
                  ),
                ),
      
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Divider(height: 2, color: Colors.black),
                const Padding(padding: EdgeInsets.only(top: 20)),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'مدل:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.shoulder == ''
                            ? '-'
                            : clientMeasures.shoulder,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'قد:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.cotilla == ''
                            ? '-'
                            : clientMeasures.cotilla,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'شانه:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bust == ''
                            ? '-'
                            : clientMeasures.bust,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'آستین:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustCircumference == ''
                            ? '-'
                            : clientMeasures.bustCircumference,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'دهن آستین:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustHeight == ''
                            ? '-'
                            : clientMeasures.bustHeight,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'یخن:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustSeparation == ''
                            ? '-'
                            : clientMeasures.bustSeparation,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'بغل:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.cleavage == ''
                            ? '-'
                            : clientMeasures.cleavage,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}