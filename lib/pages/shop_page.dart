// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_flutter/components/shoe_tile.dart';
import 'package:ecommerce_flutter/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 8),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Search",
                 style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                 ),
                ),
                Icon(Icons.search,color: Colors.grey,)
                ],),
              ),
                       ),
           ),
           const SizedBox(
            height: 20,
        ),
            Text(
              "everyone files ... some fly loneger than other",
              style: TextStyle(
                color: Colors.grey
              ),
              ),
              const SizedBox(
                height: 0,
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                    color: Colors.blue[400],
                    fontWeight: FontWeight.w700
                  ),
                )
            
              ],
            ),
            
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context,index){
              Shoe shoe = Shoe(name: "Air Jordan",description: "this is the best shoes there is ", imagePath: "lib/images/shoe2.jpg",price: "548");
              return ShoeTile(shoe: shoe,);
            }),
          )
      ],)
    );
  }
}