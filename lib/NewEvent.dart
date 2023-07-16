import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text("Add Event"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.deepPurple[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                height: 100,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.event),
                    hintText:"Event",
                    fillColor: Colors.deepPurple,
                    //icon: Icon(Icons.calendar_month_outlined),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(28.0))
                    )
                  ),
                  controller: _textEditingController,
                ),
              ),
            ),
            Builder(
              builder: (context) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple[100],
                        minimumSize: Size(350, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))
                      ),
                        onPressed: (
                        ){
                      String Neweve = _textEditingController.text;
                      Navigator.of(context).pop(Neweve);
                    },
                        child: const Text("ADD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ))),
                  ),
                );
              }
            )
          ],

          ),
        ),
      ),
    );
  }
}
