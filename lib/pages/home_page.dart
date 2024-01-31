// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_flutter/components/bottom_nav_bar.dart';
import 'package:ecommerce_flutter/pages/cart_page.dart';
import 'package:ecommerce_flutter/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
       bottomNavigationBar: BottomNavbar(onTabChange: (index)=> navigationBottomBar(index),),
    );
  }
}