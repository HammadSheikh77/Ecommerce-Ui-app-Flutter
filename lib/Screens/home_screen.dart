import 'package:ecommerce_app/Screens/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    Icon(Icons.search),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const
                      HeaderWidget(text: '50%',images: 'assets/images/sneaker_image1-removebg-preview.png',),
                      HeaderWidget(text: '70%',images: 'assets/images/sneaker_image2-removebg-preview.png',),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
