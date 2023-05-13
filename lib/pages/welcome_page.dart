import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nyumbani/utils/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';


import '../utils/animations.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Load a Lottie file from a remote url
                Lottie.network(
                  homeAnimation,
                  height: 50.h,
                  width: 90.w
                ),
                
                /// Welcome
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to ",
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Nyumbani",
                      style: GoogleFonts.tangerine(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        color: ConstantColors.mainColor
                      ),
                    )
                  ],
                ),
                Text(
                  "@ Nyumbani find your next appartment with ease",
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: ConstantColors.subBodyColor
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20,),

                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: ConstantColors.mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                          "Get Started",
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
              ],
            ),
          ),
      ),
    );
  }
}
