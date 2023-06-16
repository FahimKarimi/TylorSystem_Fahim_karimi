import 'package:tylor_app/models/hive_data.dart';
import 'package:tylor_app/models/measure.dart';
import 'package:tylor_app/screens/suit_measure_screen.dart';
import 'package:tylor_app/screens/national_measure_screen.dart';
import 'package:tylor_app/widgets/confirm_delete.dart';
import 'package:flutter/material.dart';

class ClientListScreen extends StatefulWidget 
{
  const ClientListScreen({super.key});

  @override
  State<ClientListScreen> createState() => _ClientListScreenState();
}

class _ClientListScreenState extends State<ClientListScreen> 
{
  final HiveData hiveData = const HiveData();

  List<NationalMeasures> upperClients = [];
  List<SuitMeasures> lowerClients = [];

  @override
  void initState()
  {
    super.initState();
    getData();
  }
  Future<void> getData() async
  {
    upperClients = await hiveData.nationalMeasures;
    lowerClients = await hiveData.suitMeasures;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text('لیست مشتریان'),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: upperClients.length,
                itemBuilder: (context, index) 
                {
                  return Container(
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: ListTile(
                      title: Text(upperClients[index].name),
                      subtitle: Text(upperClients[index].cellNumber),
                      onTap: () 
                      {
                        debugPrint('Tapped');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UpperMeasureScreen(clientMeasures: upperClients[index]),
                          )
                        );
                      },
                      trailing: IconButton(
                        color: Colors.red,
                        icon: const Icon(Icons.delete),
                        onPressed: () 
                        { 
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return ConfirmDeleteDialog(
                                text: 'آیا میخواهید حذف کنید؟',
                                onDelete: () 
                                {
                                  hiveData.deleteNationalMeasures(index);
                                  getData();

                                  Navigator.of(context).pop();

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('یک مورداز سیستم حذف شد')
                                    )
                                  );
                                },
                              );
                            },
                          );
                        }
                      ),
                    ),
                  );
                },
              )
            ),

            const Divider(color: Colors.black, height: 2),

            Expanded(
              child: ListView.builder(
                itemCount: lowerClients.length,
                itemBuilder: (context, index) 
                {
                  return Container(
                    decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: ListTile(
                      title: Text(lowerClients[index].name),
                      subtitle: Text(lowerClients[index].cellNumber),
                      onTap: () 
                      {
                        debugPrint('Tapped');
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LowerMeasureScreen(clientMeasures: lowerClients[index]),
                          )
                        );
                      },
                      trailing: IconButton(
                        color: Colors.red,
                        icon: const Icon(Icons.delete),
                        onPressed: () 
                        {
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return ConfirmDeleteDialog(
                                text: 'آیا میخواهید حذف کنید؟',
                                onDelete: () 
                                {
                                  hiveData.deleteSuitMeasures(index);
                                  getData();

                                  Navigator.of(context).pop();

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('یک مورداز سیستم حذف شد')
                                    )
                                  );
                                },
                              );
                            },
                          );
                        }
                      ),
                    ),
                  );
                },
              )
            )
          ],
        ),
      )
    );
  }
}