// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prezenty/pages/login.dart';
import 'package:prezenty/pages/mycards.dart';
import 'package:prezenty/pages/signup.dart';

class OTPVerific extends StatefulWidget {
  const OTPVerific({Key? key}) : super(key: key);

  @override
  State<OTPVerific> createState() => _OTPVerificState();
}

class _OTPVerificState extends State<OTPVerific> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent[700],
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(false),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ignore: missing_required_param
                        builder: (context) => MyCards()),
                  );
                },
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 100, right: 100, top: 10, bottom: 10),
                    child: Text(
                      'Please enter 4 digit code send on your phone number ',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 0.15.sw,
                        height: 0.1.sh,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromARGB(255, 190, 54, 12),
                          ),
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 5,
                              top: 10,
                            ),
                            hintText: "0",
                            counterText: '',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                    ),
                    Container(
                      width: 0.15.sw,
                      height: 0.1.sh,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 187, 53, 12),
                        ),
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 5,
                            top: 10,
                          ),
                          hintText: "0",
                          counterText: '',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                    ),
                    Container(
                      width: 0.15.sw,
                      height: 0.1.sh,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 182, 52, 12),
                        ),
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 5,
                            top: 10,
                          ),
                          hintText: "0",
                          counterText: '',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                    ),
                    Container(
                      width: 0.15.sw,
                      height: 0.1.sh,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 187, 53, 12),
                        ),
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 5,
                            top: 10,
                          ),
                          hintText: "0",
                          counterText: '',
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 10),
                child: Container(
                  width: 0.8.sw,
                  height: 0.067.sh,
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCards()),
                      );
                    },
                    child: const Text('Verify'),
                  ),
                ),
              ),
              Text('100 sec..'),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Did not recieve the OTP?',style: TextStyle(color: Colors.grey),),
                  TextButton( onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ignore: missing_required_param
                        builder: (context) => MyCards()),
                  );
                }, child: Text('Resend',style: TextStyle(color: Colors.blue),))
                ],),
              ),

                ],
              ),
            ),
          ),
        ));
  }
}
