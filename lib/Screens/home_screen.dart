import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
          child: SingleChildScrollView(
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '50% Off',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'On everything today',
                            style: TextStyle(
                                fontSize: 25, fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'With Code: HSCREATIONS',
                            style: TextStyle(
                                fontSize: 15, fontStyle: FontStyle.italic),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              child: Text(
                                'Get Now',
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                      Image.asset('assets/images/sneaker_image1-removebg-preview.png',height: 170,width: 140,)
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
