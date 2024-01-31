// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
        
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/nike-logo.png',
                height: 240,
                ),
        
                const SizedBox(height: 48,),
        
              Text(
                "Just do it",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
                ),
        
                Text(
                  "Brand new sneakers and custom kicks made with premium quality ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48,),


                GestureDetector(
                  onTap: ()=>Navigator.push(context,
                   MaterialPageRoute(builder: 
                  (context) => HomePage(),
                  
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                          ),
                      ),
                    ),
                  ),
                )

            ],
          ),
        ),
      ),
    );
  }
}