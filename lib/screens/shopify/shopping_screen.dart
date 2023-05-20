// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  ShoppingScreen({super.key});
  List<String> images = [
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
    'assets/images/16.jpg',
    'assets/images/17.jpg',
    'assets/images/18.jpg',
    'assets/images/19.jpg',
    'assets/images/20.jpg',
    'assets/images/21.jpg',
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
            child: Image.asset(
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
