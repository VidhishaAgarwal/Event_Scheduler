import 'package:event_scheduler/NewEvent.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp()
  );
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _list=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Event Scheduler",)
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container( color:Colors.deepPurple[200] ,

            child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: ((context,index) => Padding(
                padding: const EdgeInsets.all(0.0),
                child:(Card(
                    elevation: 4,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

                    child: ListTile(
                    title: _list[index],
                    onTap: (){

                }

                ),
                )
                )

              )
              ),
            ),
          ),
        ),
          floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
              onPressed: () async {
                String New = await
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddEvent()));
                setState(() {
                  _list.add(Text(New));
                });

              },
              backgroundColor: Colors.deepPurple,
              child:const Icon(Icons.add),
        );
            }
          ),
      )
    );
    }


  }

