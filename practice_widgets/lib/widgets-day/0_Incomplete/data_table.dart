import 'package:flutter/material.dart';

class WDataTable extends StatelessWidget {
  const WDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
        centerTitle: true,
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text("Id")),
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Email")),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text("1")),
              DataCell(Text("Mirza")),
              DataCell(Text("mirzatanvir74@gmail.com")),
            ],
          ),
        ],
      ),
    );
  }
}
