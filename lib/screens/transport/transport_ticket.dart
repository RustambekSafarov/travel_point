import 'package:flutter/material.dart';

class TransportTicket extends StatelessWidget {
  const TransportTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transport Booking'),
      ),
      body: const Center(
        child: Text('There is no transport ticket yet!'),
      ),
    );
  }
}
