import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:travel_point/screens/checklist/checklist_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.checklist_rounded, // Replace with your custom icon
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChecklistScreen(),
              ),
            );
          },
        ),
        backgroundColor: Colors.blue[50],
        centerTitle: true,
        title: SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
              // prefixIcon: IconButton(
              //     icon: const Icon(Icons.menu),
              //     onPressed: () {
              //       _key.currentState!.openDrawer();
              //     }),
              suffixIcon:
                  IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              labelText: 'Search for a place',
            ),
          ),
        ),
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(39.6548, 66.9597),
          initialZoom: 13,
        ),
        // mapController: [
        //   RichAttributionWidget(
        //     attributions: [
        //       TextSourceAttribution(
        //         'OpenStreetMap contributors',
        //         onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
        //       ),
        //     ],
        //   ),
        // ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
        ],
      ),
    );
  }
}
