// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:travel_point/screens/shopify/schedule.dart';
import 'package:travel_point/screens/shopify/schedule2.dart';
import 'package:travel_point/screens/shopify/shopping_screen.dart';

class ShopifyScreen extends StatelessWidget {
  ShopifyScreen({super.key});
  List<String> shopifyName = [
    // there is shopify names
    'Trip to Samarkand',
    'Travel across Bukhara-Samarkand',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Travel scheme'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            index == 0
                ? Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Scedule();
                  }))
                : Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Scedule2();
                  }));
          },
          leading: const Icon(Icons.shopping_bag_outlined),
          title: Text(shopifyName[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 2,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ShoppingScreen();
          }));
        },
        label: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 65,
          alignment: Alignment.center,
          child: Text('Shopping section'),
        ),
      ),
    );
  }
}
