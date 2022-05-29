import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prezenty/pages/mycards.dart';
import 'package:prezenty/pages/signupproof.dart';


class Signup2 extends StatefulWidget {
  const Signup2({Key? key}) : super(key: key);

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
    String dropdownValue = 'Select';
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
                  'Occupation',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'Engineer', 'Doctor', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Constitution',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'Constitution', 'Constitution', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Marital Status',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'Single', 'Married', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Education',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'Bachelors', 'Master', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                 ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Nature of business',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'online', 'offline', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                 ),
                 Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'source of fund',
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
                        style: const TextStyle(color: Color.fromARGB(255, 117, 105, 105)),
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
                        items: <String>['Select', 'savings', 'business', ]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
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
                        MaterialPageRoute(builder: (context) => SignupProof()),
                      );
                    },
                    child: const Text('Next'),
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