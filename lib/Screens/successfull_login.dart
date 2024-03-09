import 'package:ecommerce_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class SuccesfullScreen extends StatelessWidget {
  const SuccesfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 80,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Successful!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'You have successfully registered in \n our app and start working in it.',
                    style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: Text(
                          'Start Shopping',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
