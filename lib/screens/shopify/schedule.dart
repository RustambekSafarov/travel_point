import 'package:flutter/material.dart';

class Scedule extends StatelessWidget {
  const Scedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Scheme'),
      ),
      body: Column(
        children: [
          const Text(
            'Rim Afina Vavilonlarning tengdosh shahri. Samarqandga sayohat',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          const Text(
            'Dastur',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          FittedBox(
            child: DataTable(
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text('Vaqti')),
                DataColumn(label: Text('Tadbir nomi')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('21:00-07:00')),
                  DataCell(Text('Registon memoriy majmuasi, Goʻri amir maqbarasi, Bibixonim masjidi va maqbarasi,')),
                ]),
                DataRow(cells: [
                  DataCell(Text('07:30')),
                  DataCell(Text('Nonushta')),
                ]),
                DataRow(cells: [
                  DataCell(Text('08:30-17:00')),
                  DataCell(Text('Siyob bozori, Shohizinda meʼmoriy majmuasi, Mirzo Ulugʻbek Observatoriyasi')),
                ]),
                DataRow(cells: [
                  DataCell(Text('13:00-14:00')),
                  DataCell(Text('Tushlik')),
                ]),
                DataRow(cells: [
                  DataCell(Text('17:30-19:30')),
                  DataCell(Text('Mehmonxonaga joylashish')),
                ]),
                DataRow(cells: [
                  DataCell(Text('20:00')),
                  DataCell(Text('Kechgi ovqat')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('Dam olish vaqti')),
                ]),
              ],
            ),
          ),
          const Text(
            'Xizmat narxi:',
            style: TextStyle(fontSize: 19),
          ),
          FittedBox(
            child: DataTable(
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text('Sayohatchilar soni')),
                DataColumn(label: Text('Bir kishi uchun (soʻm)')),
                DataColumn(label: Text('Jamigi (soʻm)')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('12. 40')),
                  DataCell(Text('790, 000,00')),
                  DataCell(Text('9,480,000,00\n31,600,000,00')),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
