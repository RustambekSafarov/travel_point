// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  ShoppingScreen({super.key});
  List<String> images = [
    'https://telegra.ph/file/73b975b3b9266d8c2470c.png',
    'https://telegra.ph/file/8e690b24e0e1a6313ce29.png',
    'https://telegra.ph/file/9ebc39047092c2c835e53.png',
    'https://telegra.ph/file/38a7f5dd71b4070dfee09.png',
    'https://telegra.ph/file/dce79fc3876d1b3dd839e.png',
    'https://telegra.ph/file/352b0f1c39d2233996455.png',
    'https://telegra.ph/file/bd5e854d0c792d81b15cf.png',
    'https://telegra.ph/file/5bf35cd75abb9925f5512.png',
    'https://telegra.ph/file/e1ecb63e6aa15e003e386.png',
    'https://telegra.ph/file/6d79feaa5450fa9cba9f5.png',
    'https://telegra.ph/file/8536fa827b95681e5bc88.png',
  ];
  List<String> labels = [
    'Adras tòn\n150 ming',
    'Taqinchoqlar umumiy\n450 ming',
    'Dòppi\n60 ming',
    'Taqinchoqlar\n35 ming',
    'Sopol haykalchalar\n85 ming',
    'Sopol tovoqlar\n350 ming',
    'Sovĝa qutisi\n90 ming',
    'Ko\'za\n70 ming',
    'Dòppi\n40 ming',
    'Kashtachilik\n30 ming',
    'Tòqimachilik buyumi\n50 ming sòm',
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shopping'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        itemCount: images.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) => InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: const Text('This field is empty!'),
                  action: SnackBarAction(
                    label: 'Ok',
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  )),
            );
          },
          child: GridTile(
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black.withAlpha(100),
              title: Text(
                labels[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ffem * 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
