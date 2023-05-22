import 'package:flutter/material.dart';
import 'package:half_life_tracker/references/route_ref.dart';

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
          // Navigate to second route
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



        },
        child: const Text('Confirm addition'),
        ),
      ),
    );
}
}