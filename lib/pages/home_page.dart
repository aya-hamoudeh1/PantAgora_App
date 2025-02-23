import 'package:flutter/material.dart';
import 'package:pantagora_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text("PantAgora"),
        backgroundColor: kPrimaryColor,
      ) ,
    );
  }
}
