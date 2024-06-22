import 'package:flutter/material.dart';


class FrontCategoryWidegt extends StatefulWidget {

  const FrontCategoryWidegt({super.key});

  @override
  State<FrontCategoryWidegt> createState() => _FrontCategoryWidegtState();
}

class _FrontCategoryWidegtState extends State<FrontCategoryWidegt> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/rabbit.jpg'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      
                      ),
                      
                    ),
    );
  }
}