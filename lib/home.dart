import 'package:flutter/material.dart';
class Home extends StatefulWidget {
 //change when reload app
 const Home({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 State<Home> createState() => _HomePageState();
}
class _HomePageState extends State<Home> {
 @override
 Widget build(BuildContext context) {
 return Center(
    child: Container(
      height: 250.0,
      width: 250.0,
      decoration: BoxDecoration( //สามารถใส่รูป
        image: const DecorationImage(
          image: AssetImage('assets/images/Exam.jpg'),
          fit: BoxFit.fill,
        ),
        border: Border.all( //กำหนดเส้น
          width: 3,color: Colors.black , 
        ),
        shape: BoxShape.circle, //รูปทรง
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 10.0, //extend the shadow
              offset: Offset( //กำหนดองศาเงา 
                0.0, // Move to right 5 horizontally
                0.0, // Move to bottom 5 Vertically
                ),
              )
            ],
          ),
        ),
      );
    }
  }