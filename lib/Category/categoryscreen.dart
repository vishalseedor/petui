
import 'package:flutter/material.dart';
import 'package:pet_adoption/Category/categorywidget.dart';
import 'package:pet_adoption/colors/colors.dart';


class CategoryScreen extends StatefulWidget { 

  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

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
        title: const Text('Category Pets',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    body:SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     Text('Category Pets Nears You',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.02),
            SizedBox(
                                    //height: size.height * 0.6,
                                    child: GridView.builder(
                                      scrollDirection: Axis.vertical,
                      itemCount:5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                       // childAspectRatio: 0.98,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return AllCategoryWidget(
                         
                        
                          );
                      },
                    )
                                  ),
            
          ],
        ),
      ),
    ),  
    );
  }
}