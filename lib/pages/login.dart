
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'mycards.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Email Address',
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
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'prezenty@gmail.com',
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.pink,)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Password',
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
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '********',
                      prefixIcon: Icon(Icons.lock,color: Colors.pink,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,)
                  ),
                ),
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
                        MaterialPageRoute(builder: (context) => MyCards()),
                      );
                    },
                    child: const Text('Login'),
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