import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../base/drawer.dart';
import '../utils/constant_colors.dart';
import 'package:sizer/sizer.dart';

import '../widgets/text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final f_nameController = TextEditingController();
  final l_nameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.mainColor,
        elevation: 0,
        ///profile pic
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Nyumbani",
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
        padding: EdgeInsets.all(7.w),
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// profile pic
              Center(
                child: Container(
                  height: 40.w,
                  width: 40.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.w),
                    color: ConstantColors.whiteColor,
                    border: Border.all(
                        color: ConstantColors.mainColor,
                      width: 3
                    )
                  ),
                  child: Icon(
                    Icons.person,
                    size: 30.w,
                  ),

                ),
              ),

              SizedBox(height: 2.h,),

              /// f_name field
              text_field(
                  hintText: "First name",
                  icon: Icons.account_circle,
                  textInputType: TextInputType.name,
                  maxLines: 1,
                  controller: f_nameController,
                  isObsecure: false
              ),

              /// fl_name field
              text_field(
                  hintText: "Last name",
                  icon: Icons.account_circle,
                  textInputType: TextInputType.name,
                  maxLines: 1,
                  controller: l_nameController,
                  isObsecure: false
              ),

              /// email field
              text_field(
                  hintText: "Email",
                  icon: Icons.email_outlined,
                  textInputType: TextInputType.emailAddress,
                  maxLines: 1,
                  controller: emailController,
                  isObsecure: false
              ),

              SizedBox(height: 5.h,),

              //update button
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width ,
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
                        "Update",
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
        ),
      ),
    );
  }
}
