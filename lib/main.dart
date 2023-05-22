// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_point/providers/todos_provider.dart';
import 'package:travel_point/screens/food_screen.dart';
import 'package:travel_point/screens/home_screen.dart';
import 'package:travel_point/screens/language_screen.dart';
import 'package:travel_point/screens/shopify/shopify_screen.dart';
import 'package:travel_point/screens/transport/transport_screen.dart';

import 'screens/login/login_screen.dart';

void main() {
  runApp(MyRootWidget());
}

class MyRootWidget extends StatelessWidget {
  const MyRootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Booking',
      home: LoginScreen(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pages = [
    HomeScreen(),
    FoodScreen(),
    ShopifyScreen(),
    LanguageScreen(),
    TransportScreen(),
  ];

  int currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Booking',
        home: Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: BottomAppBar(
            color: Colors.blue[50],
            height: 60,
            elevation: 20,
            shape: const CircularNotchedRectangle(),
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // we're gonna change this  to active and inactive images
              children: [
                const Spacer(),
                IconButton(
                  icon: currentIndex == 0
                      ? const Icon(
                          Icons.home,
                          color: Colors.blue,
                        )
                      : Icon(
                          Icons.home,
                          size: 25,
                          color: Colors.grey[700],
                        ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: currentIndex == 1
                      ? const Icon(Icons.local_dining, color: Colors.blue)
                      : Icon(
                          Icons.local_dining,
                          size: 25,
                          color: Colors.grey[700],
                        ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: currentIndex == 2
                      ? const Icon(Icons.shopify, color: Colors.blue)
                      : Icon(
                          Icons.shopify,
                          size: 25,
                          color: Colors.grey[700],
                        ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: currentIndex == 3
                      ? const Icon(Icons.translate, color: Colors.blue)
                      : Icon(
                          Icons.translate,
                          size: 25,
                          color: Colors.grey[700],
                        ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                ),
                const Spacer(),
                IconButton(
                  icon: currentIndex == 4
                      ? const Icon(
                          Icons.emoji_transportation,
                          color: Colors.blue,
                        )
                      : Icon(
                          Icons.emoji_transportation,
                          size: 25,
                          color: Colors.grey[700],
                        ),
                  onPressed: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
