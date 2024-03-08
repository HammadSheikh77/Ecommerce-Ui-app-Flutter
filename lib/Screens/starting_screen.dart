import 'package:ecommerce_app/Screens/Signup_screen.dart';
import 'package:ecommerce_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/sneaker_main_Screen.jpeg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
              child: Text(
            'Sneaker Mart',
            style: TextStyle(
                fontFamily: 'FontMain', fontSize: 55, color: Colors.white,fontWeight: FontWeight.bold),
          )),
          Positioned(
            bottom: 80,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                },
                style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                child: Text('Login',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()),);
                },
                style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                child: Text('Sign Up',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
