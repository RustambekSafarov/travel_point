import 'package:flutter/material.dart';

class Scedule2 extends StatelessWidget {
  const Scedule2({super.key});

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
            'Бухоро- Самарканд бўйлаб  саёҳат',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          const Text(
            'ДАСТУРИ',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          const Text(
            '1-кун',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          FittedBox(
            child: DataTable(
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text('Вақти')),
                DataColumn(label: Text('Тадбир номи')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('03:00-04:00')),
                  DataCell(Text('Барча саёҳатчилар келишилган манзилда йиғилиб, Бухоро шаҳрига йўлга чиқиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('04:00-11:40')),
                  DataCell(Text('Бухоро шаҳрига етиб келиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('13:30-17:00')),
                  DataCell(Text('''Пои-Колон меъморий ёдгорлик
Арк калъаси
Сомонийлар макбараси;
Чашмаи-Аюб макбараси;
 Магаки-Аттари масжиди.
Мирзо Улугбек мадрасаси,
Мири-Араб мадрасаси,
Ляби-Хоуз мажмуаси ва бошкалар.''')),
                ]),
                DataRow(cells: [
                  DataCell(Text('17:30-19:30')),
                  DataCell(Text('Бухородан Самарқанд шаҳрига етиб келиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('20:00-21:00')),
                  DataCell(Text('Самарқанд шаҳридаги ресторанда кечги овқат')),
                ]),
                DataRow(cells: [
                  DataCell(Text('21:30')),
                  DataCell(Text('Меҳмонхонага жойлашиш')),
                ]),
              ],
            ),
          ),
          const Text(
            '2-кун',
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          FittedBox(
            child: DataTable(
              border: TableBorder.all(),
              columns: const [
                DataColumn(label: Text('Вақти')),
                DataColumn(label: Text('Тадбир номи')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('03:00-04:00')),
                  DataCell(Text('Барча саёҳатчилар келишилган манзилда йиғилиб, Бухоро шаҳрига йўлга чиқиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('04:00-11:40')),
                  DataCell(Text('Бухоро шаҳрига етиб келиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('13:30-17:00')),
                  DataCell(Text('''Пои-Колон меъморий ёдгорлик
Арк калъаси
Сомонийлар макбараси;
Чашмаи-Аюб макбараси;
 Магаки-Аттари масжиди.
Мирзо Улугбек мадрасаси,
Мири-Араб мадрасаси,
Ляби-Хоуз мажмуаси ва бошкалар.''')),
                ]),
                DataRow(cells: [
                  DataCell(Text('17:30-19:30')),
                  DataCell(Text('Бухородан Самарқанд шаҳрига етиб келиш')),
                ]),
                DataRow(cells: [
                  DataCell(Text('20:00-21:00')),
                  DataCell(Text('Самарқанд шаҳридаги ресторанда кечги овқат')),
                ]),
                DataRow(cells: [
                  DataCell(Text('21:30')),
                  DataCell(Text('Меҳмонхонага жойлашиш')),
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
