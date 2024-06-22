



import 'dart:ui';

import 'package:flutter/material.dart';




class AllCategoryWidget extends StatefulWidget {
  
  
  

  const AllCategoryWidget(
      {super.key,
   
   
      });

  @override
  State<AllCategoryWidget > createState() => _AllCategoryWidgetState();
}

class _AllCategoryWidgetState extends State<AllCategoryWidget > {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //  final pet = Provider.of<PetModel>(context);
    return GestureDetector(
      onTap: () {
            // Navigator.of(context)
            //     .pushNamed(PetCategoryScreen.routeName ,arguments:widget.id);
      },
      child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/fish3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text(
                    'Fishes',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: 16,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          )
    );

   
  }
}
