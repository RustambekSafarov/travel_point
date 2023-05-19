// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:travel_point/screens/login/login_screen.dart';

import 'transport_ticket.dart';

class TransportScreen extends StatelessWidget {
  TransportScreen({super.key});
  List<String> trName = [
    // there is transport names
    'Bus',
    'Train',
    'Airplane',
    'Boat',
  ];
  List trIcon = [
    // there is transport icons
    Icons.directions_bus,
    Icons.train,
    Icons.airplanemode_active,
    Icons.directions_boat,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transport'),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: trName.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const TransportTicket();
            }));
          },
          leading: Icon(trIcon[index]),
          title: Text(trName[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
