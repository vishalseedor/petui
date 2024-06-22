
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_adoption/LoginScreen/loginscreen.dart';
import 'package:pet_adoption/colors/colors.dart';
import 'package:pet_adoption/petview/frontwidget.dart';
import 'package:pet_adoption/petview/petwidget.dart';





class Newpet extends StatefulWidget {

  const Newpet({super.key});

  @override
  State<Newpet> createState() => _NewpetState();
}

class _NewpetState extends State<Newpet> {
  List<String>images=['assets/dog.jpg','assets/cat.jpg','assets/fish3.jpg','assets/rabbit.jpg'];
  TextEditingController searchController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
 

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
      iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor:purpleColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pets Adoption ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 17),
            ),
            Text('Kollam,India',style: TextStyle(
            color: Colors.white,fontSize: 12),)
          
          // Consumer<UserProvider>(builder: (context, value, child) {
          //       String userAddress = "";
          //       for (var i = 0; i < value.users.length; i++) {
          //         userAddress = value.users[i].address;
          //         print(userAddress+'vvvvvvvvv');
          //       }
          //       return Text(
          //         '$userAddress , India',
          //         style: const TextStyle(
          //             color: Colors.white,
          //             fontSize: 10,
          //             fontWeight: FontWeight.w900),
          //       );
          //     }),
          ],
        ),
        actions: [
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap:(){
          //   Navigator.push(context, MaterialPageRoute(builder:(context)=>const MyOrdersScreen()));
            } ,
            child: Image.asset('assets/newadoption.png',height: 35,width: 35))
        )
        ],
      ),
      
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: purpleColor),
                currentAccountPicture: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/newprofile.png'),
                ),
                accountName: Text(''),
                accountEmail: Text(''),
              //   Consumer<UserProvider>(builder: (context, value, child) {
              //   String userAddress = "";
              //   for (var i = 0; i < value.users.length; i++) {
              //     userAddress = value.users[i].firstname;
              //     print(userAddress+'vvvvvvvvv');
              //   }
              //   return Text(
              //     '$userAddress',
              //     style: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w900),
              //   ); 
              // }
              
              // ),
              //   accountEmail:Consumer<UserProvider>(builder: (context, value, child) {
              //   String userAddress = "";
              //   for (var i = 0; i < value.users.length; i++) {
              //     userAddress = value.users[i].email;
              //     print(userAddress+'vvvvvvvvv');
              //   }
              //   return Text(
              //     userAddress,
              //     style: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 12,
              //         fontWeight: FontWeight.w400),
              //   );
              // }),
              ),
            ListTile(
              leading:  Icon(IconlyBold.home,color: purpleColor,),
              title: const Text('Dashboard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
               
                //Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => const PetViewScreen()));
              },
            ),
             InkWell(
              onTap: () {
                //Navigator.push(context,MaterialPageRoute(builder:(context)=>const CategoryScreen()));
              },
               child: ListTile(
                leading: Icon(Icons.pets,color: purpleColor,),
                title: const Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ), 
           
          InkWell(
              onTap: () {
             //   Navigator.push(context,MaterialPageRoute(builder:(context)=>const PetFavouritePage()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.heart,color: purpleColor,),
                title: const Text('My Favourites',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
             InkWell(
              onTap: () {
            //    Navigator.push(context,MaterialPageRoute(builder:(context)=>const EventScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.paper,color: purpleColor,),
                title: const Text('Pet Events',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
              InkWell(
              onTap: () {
          //      Navigator.push(context,MaterialPageRoute(builder:(context)=>const MyOrdersScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.shieldDone,color: purpleColor,),
                title: const Text('My Adoptions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
             InkWell(
                onTap: (){
              //  Navigator.push(context,MaterialPageRoute(builder:(context)=>const SupportScreen()));
              },
               child: ListTile(
                leading: Icon(IconlyBold.message,color: purpleColor,),
                title: const Text('Feedback',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                           ),
             ),
            ListTile(
              leading:  Icon(IconlyBold.profile,color: purpleColor,),
              title: const Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
             //   Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProfilePage()));
              },
            ),
            ListTile(
              leading:  Icon(IconlyBold.logout,color: purpleColor,),
              title: const Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Logout',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      content:
                          const Text('Are you sure want to exit this app?'),
                      actions: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: purpleColor),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: purpleColor),
                          onPressed: () {
                            // Close the dialog
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                               fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             TextFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),borderSide: BorderSide.none
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                     // size: 17,
                    ),
                    hintText: "Search ",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                       fontSize: 14,
                        fontWeight: FontWeight.w600),
                 
                 
                  ),
                  style: const TextStyle(color: Colors.black),
                
                ),
               SizedBox(height: size.height*0.02),
               const Text('Categories',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(height: size.height*0.02),
         
                 SizedBox(
                              height: size.height * 0.07,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (context, intex) {
                                  return FrontCategoryWidegt(
                                  
                                   
                                  );
                                },
                              ),
                            ),
               
                     
              SizedBox(
                height: size.height*0.03,
              ),
              const Text('Popular Pets Nears You',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            
              SizedBox(
                            height: size.height * 0.6,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 4,
                              itemBuilder: (context, intex) {
                                return AllPetWidget(
                                
                                );
                              },
                            ),
                          ),
                      
           
            ],
          ),
        ),
      ),
    );
  }
}
