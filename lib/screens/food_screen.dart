// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  FoodScreen({super.key});
  List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  List<String> labels = [
    'Top 10 restauarants',
    'Trattorie Milanesi',
    'Top 10 place for lunch',
    'Restourant with a view',
    'Aperitivo on Navigli',
    'Restourant in  porta Romana',
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Food'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: ffem * 330,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelText: 'Search',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.tune),
              )
            ],
          ),
          GridView.builder(
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
              child: Container(
                width: 152.24 * fem,
                height: 158.55 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffcecece),
                  borderRadius: BorderRadius.circular(10 * fem),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(images[index]),
                  ),
                ),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.bookmark_border),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          labels[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            // backgroundColor: Colors.black.withOpacity(0.5),
                            shadows: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(1, 3),
                              ),
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                                offset: Offset(2, 3),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
