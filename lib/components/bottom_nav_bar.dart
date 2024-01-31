import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;

   BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color:Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange:  onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home,
            text:"Shop",
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 18),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 18),

          )
        ],
      ),
    );
  }
}