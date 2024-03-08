import 'package:ecommerce_app/Screens/successfull_login.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sneaker Mart',
                      style: TextStyle(
                          fontFamily: 'FontMain',
                          fontSize: 55,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'please login or sign up to continue our app',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => SuccesfullScreen()),);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ))),
                        SizedBox(height: 15,),
                        Center(child: Text('Or',style: TextStyle(fontSize: 15),)),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white), child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook,),
                                Text('Continue with facebook',style: TextStyle(color: Colors.black),),
                              ],
                            ))),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white), child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/google.png',height: 23,width: 23,),
                                Text('Continue with google',style: TextStyle(color: Colors.black),),
                              ],
                            )))
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
