import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pertemuan8/components/my_bottom_nav_bar.dart';
import 'package:pertemuan8/constants.dart';
import 'package:pertemuan8/screens/home/components/body.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 10,
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: kPrimaryColor,
            expandedHeight: 10,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                // Ubah opacity berdasarkan scroll
                final double top = constraints.biggest.height;
                final double opacity = (1 - (top - kToolbarHeight) / 50).clamp(0.0, 1.0);

                return Container(
                  
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      icon: SvgPicture.asset("assets/icons/menu.svg"),
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
          ),

          // Body
          SliverToBoxAdapter(child: Body()),
        ],
      ),
      bottomNavigationBar: SafeArea(
      child: const MyBottomNavBar(currentIndex: 0),)
    );
  }
}