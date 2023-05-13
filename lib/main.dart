import 'package:flutter/material.dart';
import 'package:nyumbani/pages/auth/otp_page.dart';
import 'package:nyumbani/pages/auth/phone_page.dart';
import 'package:nyumbani/pages/auth/register_page.dart';
import 'package:nyumbani/pages/welcome_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: RegisterPage(),
        );
      },
    );  }
}
