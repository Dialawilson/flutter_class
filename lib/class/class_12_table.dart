import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child:  Table(
          border: TableBorder.all(),
          columnWidths: <int, TableColumnWidth>{
            0:FlexColumnWidth(100),
            1:FlexColumnWidth(),
            2:FlexColumnWidth(100),
          },
          children: [
            TableRow(
              children: [
                Text('name'),
                Text('subject'),
                Text('GRade')
              ]
            )
          ],
        ),
      ),
    );
  }
}