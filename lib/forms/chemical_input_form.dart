import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  final myController = TextEditingController();

  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add chemical'),
        ),
        body: Column(

          children: [ 
            
            TextFormField(
              restorationId: 'chemical_name_field',
              controller: myController,
              decoration: InputDecoration(
                border:  OutlineInputBorder(),
                hintText: "Chemical Name",
                labelText: "Name of Substance"
                ),
              ),
                
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Confirm addition'),
            ),
          ]
        ),
        );



  }



}
