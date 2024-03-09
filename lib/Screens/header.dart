import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final String images;
  const HeaderWidget({super.key, required this.text, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                'On everything today',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              Text(
                'With Code: HSCREATIONS',
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text(
                    'Get Now',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          Image.asset(images,height: 170,width: 140,),
        ],
      ),
    );
  }
}
