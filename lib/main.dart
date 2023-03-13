import 'Thaibank.dart';
import 'home.dart';
import 'package:flutter/material.dart';
import 'images_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //show dbugมุมขวา
      title: 'Final Test',
      theme: ThemeData(
      
        primarySwatch: Colors.lightGreen,
      ),
      home: const MainPage(title: 'Final Exam Miss.Phattaraporn',),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int intCurrentIndex = 0; //เริ่มที่หน้าอะไร
  String strWelcome = "Hello";
  final screens = [
    Home(title: 'Home'),
    SavingPage(),
    Listview()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(widget.title),
        centerTitle: true, //หัวข้อตรงกลาง
        actions: <Widget>[  //ทางขวา
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings), color: Colors.white,
          ),
        ],
      ),
      body: screens[intCurrentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: intCurrentIndex, //เริ่มต้นหน้า
          onTap: (index) => setState(() {
              intCurrentIndex = index;
            }),
          backgroundColor: Colors.lightGreen,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          selectedFontSize: 18,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
          showUnselectedLabels: false,
        
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), 
              label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.savings_rounded), 
              label: 'Saving'),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Movie'),
            ]),
          );
        }
      }
