import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nyumbani/utils/constant_colors.dart';
import 'package:nyumbani/widgets/small_text.dart';

class CustomDrawer extends StatefulWidget {

   CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String? tapped_module = "Home";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [

            /// profile pic
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: ConstantColors.mainColor,
                borderRadius: BorderRadius.circular(500)
              ),
            ),

            const SizedBox(height: 10,),

            /// user name
            Center(child: SmallText(text: "Martin Wainaina", size: 20,)),

            Divider(
              color: ConstantColors.subBodyColor,
            ),

            /// Home
            ListTile(
              onTap: (){
                setState(() {
                  tapped_module = "Home";
                });
                print("--------->[Drawer] You tapped $tapped_module");
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              leading: Icon(Icons.home),
              title: SmallText(text: "Home", size: 15, color: tapped_module == "Home"? ConstantColors.mainColor: null),
              selected: tapped_module == "Home"? true : false,
              selectedColor:  ConstantColors.mainColor,
            ),

            /// Profile
            ListTile(
              onTap: (){
                setState(() {
                  tapped_module = "Profile";
                });
                print("--------->[Drawer] You tapped $tapped_module");
              },

              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              leading: Icon(Icons.account_circle_sharp),
              title: SmallText(text: "Profile", size: 15, color: tapped_module == "Profile"? ConstantColors.mainColor: null),
              selected: tapped_module == "Profile"? true : false,
              selectedColor: ConstantColors.mainColor,
            ),

            /// Settings
            ListTile(
              onTap: (){
                setState(() {
                  tapped_module = "Settings";
                });
                print("--------->[Drawer] You tapped $tapped_module");
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              leading: Icon(Icons.settings),
              title: SmallText(text: "Settings", size: 15, color: tapped_module == "Settings"? ConstantColors.mainColor: null),
              selected: tapped_module == "Settings"? true : false,
              selectedColor: ConstantColors.mainColor,
            ),




          ],
        ),
      ),
    );
  }
}
