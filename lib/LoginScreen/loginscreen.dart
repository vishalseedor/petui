
import 'package:flutter/material.dart';
import 'package:pet_adoption/RegisterScreen/registerscreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
       
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logoimage.jpg'),
                    fit: BoxFit.cover)),
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Center(
                        //   child: Image.asset(
                        //     'assets/login_page.webp',
                        //     height: 280,
                        //     width: 3500,
                        //   ),
                        // ),
                        const Center(
                          child: Text(
                            'LOGIN ',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.5),
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              ),
                              // hintText: 'Enter Phone Number/Email ID/BN User Id',
                              hintText: 'Email',
                              hintStyle: const TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold),
                              
                              
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(height: size.height * 0.03),
                        const Text(
                          'Password',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.01),
                        TextFormField(
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        //  obscureText: _passwordVisible,
                          controller: passwordcontroller,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              fillColor: Colors.white.withOpacity(0.5),
                              filled: true,
                              prefixIcon:
                              const Icon(Icons.lock_outline, color: Colors.white),
            //                   suffixIcon: IconButton(
            // icon: Icon(
             
            //    _passwordVisible
            //    ? Icons.visibility
            //    : Icons.visibility_off,
            //    color: Colors.grey[400]
            //    ),
            // onPressed: () {
           
            //    setState(() {
            //        _passwordVisible = !_passwordVisible;
            //    });
            //  },
            // ),
                          
                              hintText: 'Password',
                              hintStyle: const TextStyle(fontSize: 13,color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            else{
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Row(
                              //   children: [
                              //     GestureDetector(
                              //       onTap: () {
                              //         rememberMe = !rememberMe;
                              //         setState(() {});
                              //       },
                              //       child: Container(
                              //         //margin: const EdgeInsets.only(left: 7),
                              //         width: size.width * 0.05,
                              //         height: size.height * 0.025,
                              //         decoration: BoxDecoration(
                              //             color: Colors.white,
                              //             borderRadius: BorderRadius.circular(2),
                              //             border: Border.all(
                              //                 color: rememberMe
                              //                     ? Colors.blue
                              //                     : Colors.black)),
                              //         child: Center(
                              //             child: rememberMe
                              //                 ? const Icon(
                              //                     Icons.done,
                              //                     size: 15,
                              //                     color: Colors.black,
                              //                   )
                              //                 : Container()),
                              //       ),
                              //     ),
                              //     const SizedBox(
                              //       width: 15,
                              //     ),
                              //     // const Text(
                              //     //   'Remember me',
                              //     //   style: TextStyle(color: Colors.white),
                              //     // )
                              //   ],
                              // ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  '',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: size.height * 0.02,
                        // ),
                         Center(
                        child: ElevatedButton(
                          onPressed: () {
                           
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.transparent),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 50.0),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account ?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage()));
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
