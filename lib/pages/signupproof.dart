// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prezenty/pages/OTPVerification.dart';
import 'package:prezenty/pages/signup.dart';

enum SingingCharacter { PhoneNumber, Email }

class SignupProof extends StatefulWidget {
  const SignupProof({Key? key}) : super(key: key);

  @override
  State<SignupProof> createState() => _SignupProofState();
}

class _SignupProofState extends State<SignupProof> {
  SingingCharacter? _character = SingingCharacter.PhoneNumber;
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Select';
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
                      builder: (context) => Signup()),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'ID Proof',
                  style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                    height: 0.067.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.pinkAccent)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 117, 105, 105)),
                        isExpanded: true,
                        elevation: 16,
                        underline: Container(
                          height: 0,
                          color: Colors.white,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select',
                          'Aadhar',
                          'Passport',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                  height: 0.067.sh,
                  width: 0.9.sw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.pinkAccent)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Individual Address Proof',
                  style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                    height: 0.067.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.pinkAccent)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 117, 105, 105)),
                        isExpanded: true,
                        elevation: 16,
                        underline: Container(
                          height: 0,
                          color: Colors.white,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select',
                          '',
                          '',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                  height: 0.067.sh,
                  width: 0.9.sw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.pinkAccent)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  ' Identity ID Proof',
                  style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                    height: 0.067.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.pinkAccent)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 117, 105, 105)),
                        isExpanded: true,
                        elevation: 16,
                        underline: Container(
                          height: 0,
                          color: Colors.white,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select',
                          'Aadhar',
                          'Passport',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(
                  height: 0.067.sh,
                  width: 0.9.sw,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.pinkAccent)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Verify Registration',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
                ),
              ),
              ListTile(
                title: const Text('PhoneNumber'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.PhoneNumber,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Email'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Email,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 0.9.sw,
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
                        MaterialPageRoute(builder: (context) => OTPVerific()),
                      );
                    },
                    child: const Text('Send OTP'),
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
