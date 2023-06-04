import 'package:flutter/material.dart';
import 'package:half_life_tracker/forms/chemical_input_form.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _chemName = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

//  async _managePersistenceData(){
//    final prefs = await SharedPreferences.getInstance();
//  }

  void _addNewChemical(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const MyCustomForm()));


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
                const Text('You have pushed the button this many times:'),
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
      const DataColumn(label: Text('Chemical')),
      const DataColumn(label: Text('Start Time')),
      const DataColumn(label: Text('Amount remaining'))
    ];
  }
  
  List<DataRow> _createRows() {
    return [
      const DataRow(
        cells: [
        DataCell(Text('Caffeine')),
        DataCell(Text('7:00 AM')),
        DataCell(Text('45 mg'))
        ])
    ];
  }

  }