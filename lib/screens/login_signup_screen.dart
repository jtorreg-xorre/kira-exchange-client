import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kira_book/widgets/primary_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black,
          ),
          // Positioned(
          //   top: 212.h,
          //   left: MediaQuery.of(context).size.width-(MediaQuery.of(context).size.width*0.675),
          //   child: SizedBox(

          //     width: 137.w,
          //     height: 137.h,
          //     child: FittedBox(
          //       alignment: Alignment.center,
          //       child: Image.asset('assets/images/Logo.png'),
          //       fit: BoxFit.scaleDown,
          //     ),
          //   ),
          // ),
          Positioned(
            top: 250.h,
            width: 375.w,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Kira',
                style: TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          // here the code for phone registration
          Positioned(
            top: 500.h,
            width: 150.w,
            // left: MediaQuery.of(context).size.width -
            //     (MediaQuery.of(context).size.width * 0.665),
            child: RichText(
              text: TextSpan(
                  text: 'Phone Number*',
                  style: TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  )),
            ),
          ),
          Positioned(
            top: 525.h,
            width: MediaQuery.of(context).size.width,

            // left: MediaQuery.of(context).size.width -
            //     (MediaQuery.of(context).size.width * 0.69),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      // print(number.phoneNumber);
                    },
                    onInputValidated: (bool value) {
                      // print(value);
                    },
                    selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                    ignoreBlank: false,
                    autoValidateMode: AutovalidateMode.disabled,
                    selectorTextStyle: const TextStyle(color: Colors.white),
                    // textFieldController: controller,
                    formatInput: false,
                    maxLength: 9,
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    cursorColor: Colors.white,
                    inputDecoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(bottom: 15, left: 0),
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle:
                          TextStyle(color: Colors.grey.shade500, fontSize: 16),
                    ),
                    onSaved: (PhoneNumber number) {
                      // print('On Saved: $number');
                    },
                  ),
                  Positioned(
                    left: 90,
                    top: 8,
                    bottom: 8,
                    child: Container(
                      height: 40,
                      width: 1,
                      color: Colors.white.withOpacity(0.30),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 620.h,
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            child: MaterialButton(
              minWidth: 0,
              height: 70.h,
              onPressed: () {
                setState(() {
                  // _isLoading = true;
                });

                Future.delayed(const Duration(seconds: 2), () {
                  setState(() {
                    // _isLoading = false;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Verificatoin()));
                });
              },
              color: const Color.fromARGB(255, 2, 158, 219),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),

              // set _isLoading _isLoading  ? Container
              child:
                  // Container(
                  //   width: 20,
                  //   height: 20,
                  //   child: const CircularProgressIndicator(
                  //     backgroundColor: Colors.white,
                  //     color: Colors.black,
                  //     strokeWidth: 2,
                  //   ),
                  // ) :

                  const Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Positioned(
            top: 700.h,
            width: MediaQuery.of(context).size.width,
            height: 50.h,
            child: MaterialButton(
              minWidth: 0,
              height: 70.h,
              onPressed: () async {
                Uri _url = Uri(
                    scheme: 'https',
                    host: 'wa.me',
                    path: "+917389656961",
                    queryParameters: {"text": "I'm%20interested"});

                if (!await launchUrl(_url)) {
                  // _showDialog(
                  // context,
                  // title: 'Error',
                  // msg: 'Please make sure that you have whatsapp installed',
                  // );
                }
                setState(() {
                  // _isLoading = true;
                });

                Future.delayed(const Duration(seconds: 2), () {
                  setState(() {
                    // _isLoading = false;
                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Verificatoin()));
                });
              },
              // color: const Color.fromARGB(255, 2, 158, 219),
              textTheme: ButtonTextTheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                      color: Color.fromRGBO(79, 206, 93, 1), width: 1)),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              // set _isLoading _isLoading  ? Container
              child:
                  // Container(
                  //   width: 20,
                  //   height: 20,
                  //   child: const CircularProgressIndicator(
                  //     backgroundColor: Colors.white,
                  //     color: Colors.black,
                  //     strokeWidth: 2,
                  //   ),
                  // ) :

                  const Text("Whatsapp support",
                      style: TextStyle(
                          color: Color.fromRGBO(79, 206, 93, 1), fontSize: 18)),
            ),
          )
          // SizedBox(
          //   width: 375.w,
          //   child: Column(
          //     children: [
          //       VerticalSpacer(height: 212.h),

          //       VerticalSpacer(height: 115.h),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
