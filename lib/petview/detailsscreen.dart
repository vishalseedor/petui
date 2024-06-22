import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pet_adoption/colors/colors.dart';

class PetDetailsScreen extends StatefulWidget {



  const PetDetailsScreen({super.key});

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
   bool isFavorite = false;
  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;
      // final pets = Provider.of<PetProvider>(context,listen: false);
       
       
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(onPressed: (){
         Navigator.pop(context); 
        }, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: purpleColor,
        title: const Text('Pet Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
          height: 270,
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/dog.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
              SizedBox(height: size.height*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Jimmy',style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  Text('Gold Reteriver',style: TextStyle(color: purpleColor,fontWeight: FontWeight.w900,fontSize: 18),),
                  
                ],
              ),
              Row(
                children: [
                  Icon(LineIcons.dog,color: purpleColor),
                  SizedBox(width: size.width*0.02),
                  Text('Breed Name :${'Boomerian'}')
                ],
              ),
              SizedBox(height: size.height*0.01),
              InkWell(
                onTap: ()async {
                 // health.getAllHealthRecordData(petId: petData.petid);

             //  await   Navigator.push(context,MaterialPageRoute(builder: (context)=>const HealthScreen()));
                },
                child: Container(
                  height: 25,
                  width: 120,
                 
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: purpleColor,),
                  child: const Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.favorite,color: Colors.white,size: 12,),
                      Text('Health Rocords',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                    ],
                  ))),
              ),
             SizedBox(height: size.height*0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height*0.09,
                width: size.width*0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text('${2} Years',style: const TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
                  ),
                   Container(
                height: size.height*0.09,
                width: size.width*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Gender',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text('Male',style: const TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
               Container(
               height: size.height*0.09,
                width: size.width*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: TextStyle(color:purpleColor,fontWeight: FontWeight.w900),),
                      Text('10 kg',style: const TextStyle(fontWeight: FontWeight.w500),)
                    ],
                  ),
              ),
                ],
              ),
              SizedBox(height: size.height*0.02),
              Text('Pet Color : ${'Black'}',style: const TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: size.height*0.01),
                 Text('Pet Diet : ${'No diets'}',style: const TextStyle(fontWeight: FontWeight.bold),),
                   SizedBox(height: size.height*0.01),
                    Text('Pet Behavoiur : ${'Calm and silent'}',style: const TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: size.height*0.01),       
              const Text('Description',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
               SizedBox(height: size.height*0.01),
              Text('The dog is a mammal with sharp teeth, an excellent sense of smell, and a fine sense of hearing. Each of its four legs ends in a foot, or paw, with five toes. Each toe has a soft pad and a claw. A coat of hair keeps the dog warm.'),
             SizedBox(height: size.height*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Container(
     height: size.height*0.07,
                  width: size.width*0.16,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: purpleColor),
      ),
      child: InkWell(
        onTap: ()async{
          //  favpet.addItemToFavourites(petid: petData.petid.toString(),userid: user.currentUserId.toString());
            ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: purpleColor,
                            content: const Text(
                              'Pet added to Favourite Succcessfully !',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            duration: const Duration(seconds: 4),
                          ), 
                        );
       //  await Navigator.push(context,MaterialPageRoute(builder: (context)=>const PetFavouritePage()));

        },
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/fav.png',height: 25,width: 25),
          ],
        ))),
      // child: IconButton(
      //   onPressed: ()async {
      //    favpet.addItemToFavourites(petid: petData.petId.toString(),userid: user.currentUserId.toString());
      //       SnackBar(backgroundColor: purpleColor,content: const Text('Item add to favourite successfully'),duration: const Duration(seconds: 4),);
      //    await Navigator.push(context,MaterialPageRoute(builder: (context)=>const PetFavouritePage()));
          
      //   },
      //   icon: const Icon(
      //   Icons.favorite,color: Colors.red,
      //   ),
      // ),
    ),
                  InkWell(
                    onTap: () async{
                     

                    },
                    child: Container(
                     height: size.height*0.07,
                     width: size.width*0.65,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(10)),
                      child:  Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Image.asset('assets/newadoption.png',height: 30,width: 30),
                          SizedBox(width: size.width*0.06),
                          const Text('Adopt Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                        ],
                      )),
                                       ),
                  ),
                ],
              )
               
              
            ],
          ),
        ),
      ),
    );
  }
}