import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constant_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final f_nameController = TextEditingController();
  final l_nameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    f_nameController.dispose();
    l_nameController.dispose();
    emailController.dispose();
    bioController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
            child:  Center(
              child: Column(
                children: [
                  /// profile
                  InkWell(
                    onTap: ()
                    {
                      print("---------> [UserInformationPage] You have tapped profile pic");
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 50,
                      child: Icon(
                        Icons.account_circle,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        /// f_name field
                        textField(
                            hintText: "First name",
                            icon: Icons.account_circle,
                            textInputType: TextInputType.name,
                            maxLines: 1,
                            controller: f_nameController,
                            isObsecure: false
                        ),

                        /// fl_name field
                        textField(
                            hintText: "Last name",
                            icon: Icons.account_circle,
                            textInputType: TextInputType.name,
                            maxLines: 1,
                            controller: l_nameController,
                            isObsecure: false
                        ),

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
                                  "Proceed",
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      )
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
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.green)
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

}
