

import 'package:flutter/material.dart';

import '../colors/colors.dart';




class AllFavouriteWidget extends StatefulWidget {

  

  const AllFavouriteWidget(
      {super.key,

   
      });

  @override
  State<AllFavouriteWidget > createState() => _AllFavouriteWidgetState();
}

class _AllFavouriteWidgetState extends State<AllFavouriteWidget > {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
      child: GestureDetector(
        onTap: () {
        //  Navigator.of(context).pushNamed(GardenDetailsPage.routeName,arguments:widget.packageid);
           // Navigator.of(context).pushNamed(GardenDetailsScreen.routeName,arguments:widget.packageid);
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          elevation: 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(                                               
                height: size.height*0.15,
                alignment: Alignment.topRight,
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/cat.jpg'),
                    fit: BoxFit.cover,
                  ),   
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton.filledTonal(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                     
                    }, 
                    iconSize: 18,
                    icon: const Icon(Icons.delete,color: Colors.red),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cat',
                                      style: TextStyle(color:purpleColor,fontWeight: FontWeight.bold,),
                    ),
                    Text('Pershian Cat',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),)
                  
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
