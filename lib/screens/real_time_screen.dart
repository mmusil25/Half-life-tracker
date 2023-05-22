import 'package:flutter/material.dart';
import 'package:half_life_tracker/routes_tutorial/routes_main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _addNewChemical(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => SecondRoute()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: 

        ListView( 
          children: [ 
            _createDataTable(),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                )]
              ),
            ],
        ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewChemical,
        tooltip: 'Add Chemical',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }
  List<DataColumn> _createColumns(){
    return [
      DataColumn(label: Text('Chemical')),
      DataColumn(label: Text('Start Time')),
      DataColumn(label: Text('Amount remaining'))
    ];
  }
  
  List<DataRow> _createRows() {
    return [
      DataRow(
        cells: [
        DataCell(Text('Caffeine')),
        DataCell(Text('7:00 AM')),
        DataCell(Text('45 mg'))
        ])
    ];
  }

  }