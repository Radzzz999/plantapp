import 'package:flutter/material.dart';
import 'package:pertemuan8/screens/details/components/body.dart';



class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}