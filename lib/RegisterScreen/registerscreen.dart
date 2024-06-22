

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_adoption/Bottom/bottom.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{




  TextEditingController firstnamecontroller=TextEditingController();
  TextEditingController lastnamecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController addresscontroller=TextEditingController();
  var selectedGender = ''; 
 Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      // Format the date and set it in the TextField
      String formattedDate = "${picked.day}-${picked.month}-${picked.year}";
  
      datecontroller.text = formattedDate;
    }
  }
 

  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    
    return SafeArea(
      child: Scaffold(
      //  appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back,color: Colors.white,)),
      //  ),
        body: Container(
         decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/K.png'),fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   SizedBox(height: size.height * 0.03),  
                    const Text(
                      'SIGN UP',
                      style: TextStyle(  
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                       
                        keyboardType: TextInputType.text,
                        controller: firstnamecontroller,
                        decoration: InputDecoration(
                          
                          hintText: 'First Name',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            IconlyLight.profile,
                            color: Colors.black,
                          ),
                        ),
                        
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your first name';
                          }
                        },
                      
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                       keyboardType: TextInputType.text,
                       controller: lastnamecontroller,
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                           IconlyLight.profile,
                            color: Colors.black,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your last name';
                          }
                        },
                      
                      ),
                    ),
                     SizedBox(height: size.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                         readOnly: true,
                        controller: datecontroller,
                        decoration: InputDecoration(
                          hintText: 'Date of Birth',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: IconButton(
                          icon:const Icon(IconlyLight.calendar)  ,
                            color: Colors.black, onPressed: () { 
                              _selectDate(context);
                             },
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your date of birth';
                          }
                        },
                        
                        
                      ),
                    ),
                     SizedBox(height: size.height * 0.03),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: phonecontroller,
                        decoration: InputDecoration(
                          hintText: 'Mobile No',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            IconlyLight.call,
                            color: Colors.black,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your mobile no';
                          }
                        },
                       
                      ),
                    ),
                          SizedBox(height: size.height * 0.03),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            IconlyLight.message,
                            color: Colors.black,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your email';
                          }
                        },
                         
                      ),
                      
                    ),
                      SizedBox(height: size.height * 0.03),
                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                         controller: passwordcontroller,
                         keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                           IconlyLight.password,
                            color: Colors.black,
                          ),
                          suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.black)
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your password';
                          }
                        },
                        
                      ),
                    ),
                      SizedBox(height: size.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.streetAddress,
                        controller: addresscontroller,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          prefixIcon: const Icon(
                            IconlyLight.addUser,
                            color: Colors.black,
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                        validator: (value) {
                          if(value!.isEmpty){
                            return 'Please enter your address';
                          }
                        },
                       
                      ),
                
                    ),
                    
                    SizedBox(height: size.height * 0.03),
                     Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: DropdownButtonFormField<String>(
                    
                       validator: (value) {
                          if(value!.isEmpty){
                            return 'Please select your gender';
                          }
                        },
                      decoration: InputDecoration(border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide.none
                      ),
                      prefixIcon: const Icon(IconlyLight.profile,color: Colors.black,),
                      fillColor: Colors.white.withOpacity(0.5),filled: true),
                  value: selectedGender,
                
                  items: [
                    const DropdownMenuItem<String>(
                      
                      child: Text('Select'),
                      value: '',
                    ),
                    const DropdownMenuItem<String>(
                      child: Text('Male'),
                      value: 'Male',
                
                    ),
                    const DropdownMenuItem<String>(
                      child: Text('Female'),
                      value: 'Female',
                    ),
                    const DropdownMenuItem<String>(
                      child: Text('Others'),
                      value: 'Others',
                    )
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                     ),
                     SizedBox(height: size.height * 0.03),
                 
                  
                    ElevatedButton(
                      onPressed: ()async {
                    
             
                   await Navigator.push(context, MaterialPageRoute(builder:(context)=> PetBottomNavigation()));
                
                      
                    
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.transparent),
                        ), 
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 50.0),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
    }
