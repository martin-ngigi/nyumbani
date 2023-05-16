import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nyumbani/widgets/small_text.dart';
import '../base/drawer.dart';
import '../utils/constant_colors.dart';
import 'package:sizer/sizer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationsClicked = false;
  bool isThemeClicked = false;


  @override
  Widget build(BuildContext context) {

    void setNotificationsClick(){
      if(isNotificationsClicked==false){
        isNotificationsClicked=true;
      }
      else{
        isNotificationsClicked =false;
      }
    }

    void setThemeClick(){
      if(isThemeClicked==false){
        isThemeClicked=true;
      }
      else{
        isThemeClicked =false;
      }
    }


    return Scaffold(
      appBar: AppBar(
          backgroundColor: ConstantColors.mainColor,
          elevation: 0,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Nyumbani [settings]",
                  style: GoogleFonts.tangerine(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    color: ConstantColors.whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )

      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Notifications
              Container(
                height: isNotificationsClicked ? 5.h : 19.h,
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: ConstantColors.whiteColor,
                    border: Border.all(
                        color: ConstantColors.mainColor,
                        width: 1
                    )
                ),
                child: Column(
                  children: [
                    /// Notifications title
                    GestureDetector(
                      onTap: (){
                        print("You tapped notifications..");
                        setState(() {
                          // isNotifications =true;
                          setNotificationsClick();
                        });

                        print("State is $isNotificationsClicked");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Notifications",
                              style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: ConstantColors.subBodyColor
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                    ),

                    ! isNotificationsClicked ? Column(
                      children: [
                        const Divider(
                          color: Colors.black,
                          height: 1,
                          thickness: 0.5,
                        ),

                        ///Messages
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Messages",
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.subtitle1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: ConstantColors.subBodyColor
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // ToggleButtons(
                            //     children: [],
                            //     isSelected: messagesToggle
                            // )
                          ],
                        ),

                        /// In Apps
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "In Apps",
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.subtitle1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: ConstantColors.subBodyColor
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // ToggleButtons(
                            //     children: [],
                            //     isSelected: messagesToggle
                            // )
                          ],
                        ),

                        ///Emails
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Emails",
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.subtitle1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: ConstantColors.subBodyColor
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // ToggleButtons(
                            //     children: [],
                            //     isSelected: messagesToggle
                            // )
                          ],
                        )
                      ],
                    ) : SizedBox.shrink(),



                  ],
                ),

              ),

              SizedBox(height: 2.h,),

              /// Theme
              Container(
                height: isThemeClicked ? 5.h : 15.h,
                width: 100.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: ConstantColors.whiteColor,
                    border: Border.all(
                        color: ConstantColors.mainColor,
                        width: 1
                    )
                ),
                child: Column(
                  children: [
                    /// Theme title
                    GestureDetector(
                      onTap: (){
                        print("You tapped theme..");
                        setState(() {
                          setThemeClick();
                        });

                        print("State is $isThemeClicked");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Theme",
                              style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: ConstantColors.subBodyColor
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                        ],
                      ),
                    ),



                    ! isThemeClicked ? Column(
                      children: [

                        const Divider(
                          color: Colors.black,
                          height: 1,
                          thickness: 0.5,
                        ),

                        ///Light
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Light",
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.subtitle1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: ConstantColors.subBodyColor
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // ToggleButtons(
                            //     children: [],
                            //     isSelected: messagesToggle
                            // )
                          ],
                        ),

                        /// Light
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Dark",
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context).textTheme.subtitle1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: ConstantColors.subBodyColor
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            // ToggleButtons(
                            //     children: [],
                            //     isSelected: messagesToggle
                            // )
                          ],
                        ),

                      ],
                    ) : SizedBox.shrink(),

                  ],
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }



}
