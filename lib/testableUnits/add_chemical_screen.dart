import 'package:flutter/material.dart';


class ChemicalInfo {
  String? name = '';
  num? timeZero = 0;
  num? halfLife = 0;
}

class ChemicalInput extends StatelessWidget{
   ChemicalInput({super.key});

late FocusNode _chemName;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Add chemical'),
    ),
    body: Column(

      children: [ 
        
        TextFormField(
          restorationId: 'chemical_name_field',
          focusNode: _chemName,
          decoration: InputDecoration(
            border:  OutlineInputBorder(),
            hintText: "Chemical Name",
            labelText: "Name of Substance"
            ),
            onSaved: (String? value){

            },
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