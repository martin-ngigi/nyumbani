import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/constant_colors.dart';


class OTPPage extends StatefulWidget {
  final String verificationId;
  const OTPPage({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  TextEditingController pinController = TextEditingController();

  String? otpCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Container(
                    // width: 200,
                    width: double.maxFinite,
                    height: 200,
                    // padding: EdgeInsets.all(20),
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.circle,
                    //   color: Colors.green
                    // ),
                    child: Image.asset(
                        "assets/register.jpeg"
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Verification",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Enter OTP that was sent to your number",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),

                  ///pin input
                  Pinput(
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.green
                        )
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    onCompleted: (value){
                      otpCode = value;
                    },
                    /// sms autofill
                    androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
                    controller: pinController,
                  ),
                  const SizedBox(height: 25,),
                  ///verify button
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

                  const SizedBox(height: 40,),

                  /// Didn't receive any code ?
                  const Text(
                      "Didn't receive any code ?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38
                    ),
                  ),
                  const SizedBox(height: 8,),

                  const Text(
                    "Resend new code",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }


}
