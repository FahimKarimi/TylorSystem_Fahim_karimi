import 'package:flutter/material.dart';

class ConfirmDeleteDialog extends StatelessWidget 
{
  final String text;
  final VoidCallback onDelete;

  const ConfirmDeleteDialog({super.key, required this.text, required this.onDelete});

  @override
  Widget build(BuildContext context) 
  {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: onDelete, 
                  child: const Text('بلی')
                ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                  onPressed: () 
                  {
                    Navigator.of(context).pop();
                  }, 
                  child: const Text('خیر')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}