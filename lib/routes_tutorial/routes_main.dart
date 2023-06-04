import 'package:flutter/material.dart';


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @ override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Real time screen'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('Add entry'),
        onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondRoute()));


          },
        )
      )
    );
  }
}

class SecondRoute extends StatelessWidget{
  const SecondRoute({super.key});


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Second Route'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () {

          Navigator.pop(context);

        },
        child: const Text('Confirm addition'),
        ),
      ),
    );
}
}