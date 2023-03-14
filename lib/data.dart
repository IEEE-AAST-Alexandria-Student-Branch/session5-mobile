import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session_5/Pages/page1.dart';

import 'Pages/page2.dart';

late int currentPage = 0;

List<String> page1_list=[
    'Assets/pizza1.jpg',
    'Assets/pizza2.jpg',
    'Assets/pizza3.jpg',
  ];
List<String> page2_list=[
  'Assets/burger1.jpg',
  'Assets/burger2.jpg',
  'Assets/burger3.jpg',
];

List<Widget> pages = [
  Page1(),
  Page2(),
  Scaffold(body: Center(child: Icon(Icons.ac_unit_outlined,size: 150,)),),
];
