import 'package:flutter/material.dart';

class MotivationalAboutScreen extends StatefulWidget
{
  const MotivationalAboutScreen({super.key});

  @override
  State<MotivationalAboutScreen> createState() => _MotivationalAboutScreenState();
}

class _MotivationalAboutScreenState extends State<MotivationalAboutScreen>
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 245, 222),
      appBar: AppBar(
        title: const Text('درباره ما'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('images/fahim.png'),
                  ),
                  Text(
                      'Fahim Karimi and Rauf Rahghozar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,)
                  ),
                  Text(
                    'Software Enginners',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: Divider(
                      color: Colors.blue[100],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        'fahimkarimi2009@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Colors.black,
                ),
                title: Text(
                  'Fahim Karimi',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        '0792462446',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
              ),
            ),
          ),
          ),
          ],
        ),
      ),
    );
  }
}