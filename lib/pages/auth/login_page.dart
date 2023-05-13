import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constant_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child:  Center(
              child: Column(
                children: [

                  Container(
                    width: double.maxFinite,
                    height: 200,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        //color: Colors.greenAccent,
                        //width: 3,
                      ),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://uzamart.com/wp-content/uploads/2021/03/75394823_478537026342891_7674290496985890816_o-1.jpg"
                          ),
                          fit: BoxFit.cover
                      ),
                    )
                  ),

                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        /// email field
                        textField(
                            hintText: "Email",
                            icon: Icons.email_outlined,
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                            controller: emailController,
                            isObsecure: false
                        ),

                        textField(
                            hintText: "Password",
                            icon: Icons.lock_clock_outlined,
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                            controller: _passwordController,
                            isObsecure: true
                        ),

                        const SizedBox(height: 20,),

                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: GestureDetector(
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                color: ConstantColors.mainColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.bodyMedium,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: ConstantColors.whiteColor
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20,),


                        //Signup options text
                        RichText(
                          text: TextSpan(
                              text: "Don\'t have an account ? ",
                              style: TextStyle(
                                  color: ConstantColors.subBodyColor,
                                  fontSize: 16
                              ),
                              children: const [
                                TextSpan(
                                  //navigate to SignUnPage
                                  // recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage() , transition: Transition.rightToLeft, ),
                                  text: "Create",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      fontSize: 20
                                  ),
                                )
                              ]
                          ),
                        ),

                        const SizedBox(height: 40,),


                        const Divider(
                          color: Colors.black,
                          thickness: 0.5,
                          height: 50,
                        ),

                        Text("Or sign in with: "),
                        
                        

                        const SizedBox(height: 20,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            loginMethod(
                                type: "google",
                              icon: "https://img.freepik.com/premium-psd/google-icon-isolated_68185-565.jpg?w=2000"
                            ),

                            loginMethod(
                                type: "facebook",
                                icon: "https://www.facebook.com/images/fb_icon_325x325.png"
                            ),

                            loginMethod(
                                type: "apple",
                              icon: "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-icon-16.png"
                            ),

                            loginMethod(
                                type: "phone",
                              icon: "https://cdn2.iconfinder.com/data/icons/font-awesome/1792/phone-512.png"
                            ),

                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      ),

    );
  }

  Widget textField({
    required String hintText,
    required IconData icon,
    required TextInputType textInputType,
    required int maxLines,
    required TextEditingController controller,
    required bool isObsecure, ///for password purposes
  }){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: isObsecure? _obscureText : false,
        cursorColor: Colors.green,
        controller: controller,
        keyboardType: textInputType,
        maxLines: maxLines,
        decoration: InputDecoration(
            labelText: hintText,
            hintText: hintText,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.grey.shade600
            ),
            labelStyle: const TextStyle(
              fontSize: 15,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.green),
            ),
            prefixIcon: Container(
              padding: EdgeInsets.all(8),
              child: Icon(icon, color: Colors.black,),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(8),
              //   color: Colors.green
              // ),
            ),

            // suffixIcon: isObsecure ?  Icon(Icons.edit, color: Colors.black,) : Container(),

            suffixIcon: isObsecure?  IconButton(
              icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ): Icon(Icons.edit, color: Colors.black,),


            alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true
        ),
      ),
    );
  }


  Widget loginMethod({required String type,required String icon}){
    return GestureDetector(
      onTap: (){

      },
      child: Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              //color: Colors.greenAccent,
              //width: 3,
            ),
            image: DecorationImage(
                image: NetworkImage(
                  icon
                ),
                fit: BoxFit.cover
            ),
          )
      ),
    );

  }

}
