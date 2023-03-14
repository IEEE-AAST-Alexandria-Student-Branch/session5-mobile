import 'package:flutter/material.dart';
import 'package:session_5/data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double scereenWidth = MediaQuery.of(context).size.width;
    double scereenHigh = MediaQuery.of(context).size.height;
    double iconsize = scereenWidth/12;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          selectedItemColor: Colors.red,
          selectedIconTheme: IconThemeData(size: iconsize),
          showSelectedLabels: false,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.local_pizza),
                label: "pizza"
            ),
            BottomNavigationBarItem(
                icon: Image.asset('Assets/burger.png',
                    height: currentPage == 1 ? iconsize : scereenWidth/12-15,
                    width: currentPage == 1 ? iconsize : scereenWidth/12-15,
                    color: currentPage == 1 ? Colors.red : Colors.grey
                ),
                label: "burger"
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_outlined),
                label: "AC"
            ),
          ]
      ),
      body: pages[currentPage],
    );
  }
}
