


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/screens/register.dart';
import 'package:graduationproject/shared/colors.dart';
import 'package:graduationproject/shared/contants.dart';
import 'package:graduationproject/shared/snakbar.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisable = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  signIn() async {
    setState(() {
      isLoading = true;
    });

    try {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    // final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);
    return Scaffold(





        body:
       Stack(
         children: [
           Container(
             constraints: BoxConstraints.expand(),
             decoration: const BoxDecoration(
               image: DecorationImage(
                   image: AssetImage("assets/images/collage2.jpg"),
                   fit: BoxFit.cover),
             ),
             child: SingleChildScrollView(
               child: Column(
                 // mainAxisAlignment: MainAxisAlignment.center,
                   children:  [
                     SizedBox(height: 99,),
                     Text("FCI Community",style: TextStyle
                       (fontSize: 40,color: Colors.white,
                         fontFamily:"myfont"),),
                     Center(

                       child: Padding(
                         padding: widthScreen > 600
                             ? EdgeInsets.symmetric(horizontal: widthScreen * .3)
                             : const EdgeInsets.all(33.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,

                           children: [
                             SizedBox(height: 30,),
                             TextField(
                                 controller: emailController,
                                 keyboardType: TextInputType.emailAddress,
                                 obscureText: false,
                                 decoration: decorationTextfield.copyWith(
                                     hintText: "Enter Your Email : ",
                                     suffixIcon: const Icon(Icons.email))),
                             const SizedBox(
                               height: 33,
                             ),
                             TextField(
                                 controller: passwordController,
                                 keyboardType: TextInputType.text,
                                 obscureText: isVisable ? false : true,
                                 decoration: decorationTextfield.copyWith(
                                     hintText: "Enter Your Password : ",
                                     suffixIcon: IconButton(
                                         onPressed: () {
                                           setState(() {
                                             isVisable = !isVisable;
                                           });
                                         },
                                         icon: isVisable
                                             ? const Icon(Icons.visibility)
                                             : const Icon(Icons.visibility_off)))),
                             const SizedBox(
                               height: 33,
                             ),
                             ElevatedButton(
                               onPressed: () async {
                                 await signIn();
                                 if (!mounted) return;
                                 showSnackBar(context, "successfully sign-in ☺");
                               },
                               style: ButtonStyle(
                                 // backgroundColor: MaterialStateProperty.all(BTNgreen),
                                 padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(8))),
                               ),
                               child: isLoading
                                   ? const CircularProgressIndicator(
                                 color: Colors.white,
                               )
                                   : const Text(
                                 "Sign in",
                                 style: TextStyle(fontSize: 19),
                               ),
                             ),
                             const SizedBox(
                               height: 9,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 const Text("Do not have an account?",
                                     style: TextStyle(fontSize: 18)),
                                 TextButton(
                                     onPressed: () {
                                       Navigator.pushReplacement(
                                         context,
                                         MaterialPageRoute(
                                             builder: (context) => const Register()),
                                       );
                                     },
                                     child: const Text('sign up',
                                         style: TextStyle(
                                             fontSize: 18,
                                             decoration: TextDecoration.underline))),
                               ],
                             ),


                           ],
                         ),
                       ),



                     ),
                   ]
               ),
             ),
           ),
         ],
       )

    );
  }
}