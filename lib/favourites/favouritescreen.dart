
import 'package:flutter/material.dart';
import 'package:pet_adoption/colors/colors.dart';
import 'package:pet_adoption/favourites/favouritewidget.dart';


class PetFavouritePage extends StatefulWidget { 

  const PetFavouritePage({super.key});

  @override
  State<PetFavouritePage> createState() => _PetFavouritePageState();
}

class _PetFavouritePageState extends State<PetFavouritePage> {
  

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
   
    return Scaffold(
        appBar: AppBar(
      
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        // ignore: prefer_const_constructors
        },icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: purpleColor,
        title: const Text('Favouitres',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    body:
                       SizedBox(
                           // height: size.height * 0.6,
                            child: GridView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.98,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return AllFavouriteWidget(
                
      
                  );
              },
            )
                          ),
    
    );
  }
}