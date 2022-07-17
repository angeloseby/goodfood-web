import 'package:flutter/material.dart';
import 'package:flutter_website/screens/home/components/app_bar.dart';
import 'package:flutter_website/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/bg.jpg",
            ),
          ),
        ),
        child: Column(
          children: const [
            CustomAppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}
