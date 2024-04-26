import 'package:exam_e_comrce/Coponats/Home/home.dart';
import 'package:exam_e_comrce/Coponats/cart/cart.dart';
import 'package:exam_e_comrce/Coponats/details/detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>homescreen(),
        '/det':(context)=>detailScreen(),
        '/cart':(context)=>cartScreen(),
      },
    );
  }
}

