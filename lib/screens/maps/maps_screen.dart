import 'package:flutter/material.dart';
import 'package:pertemuan8/components/my_bottom_nav_bar.dart';
import 'package:pertemuan8/screens/maps/components/home_maps_page.dart';


class MapsScreen extends StatelessWidget {
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeMapsPage(),
      bottomNavigationBar: SafeArea(
      child: const MyBottomNavBar(currentIndex: 3),)
    );
  }
}