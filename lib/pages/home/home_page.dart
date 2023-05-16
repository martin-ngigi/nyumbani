import 'package:flutter/material.dart';
import 'package:nyumbani/utils/constant_colors.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///searchbar
              Searchfield(),

              SizedBox(height: 2.h,),

              /// Single rooms and bedsitter
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("Single rooms", textAlign: TextAlign.center,),
                    ),
                  ),
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("bedsitter", textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 1.5.h,),

              /// One bedroom and two bedroom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("One bedroom", textAlign: TextAlign.center,),
                    ),
                  ),
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("two bedroom", textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 1.5.h,),

              /// Three bedroom and four bedroom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("Three bedroom", textAlign: TextAlign.center,),
                    ),
                  ),
                  Container(
                    height: 30.w,
                    width: 40.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.3)
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: ConstantColors.whiteColor
                    ),
                    child: Center(
                      child: Text("Four bedroom", textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5.h,),
              Container(
                height: 30.w,
                width: 85.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.3)
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: ConstantColors.mainColor
                ),
                child: Center(
                  child: Text("Upcomings", textAlign: TextAlign.center,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
