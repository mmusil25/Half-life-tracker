import 'package:flutter/material.dart';
import 'package:half_life_tracker/forms/chemical_input_form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    MaterialPageRoute(builder: (context) => MyCustomForm()));
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