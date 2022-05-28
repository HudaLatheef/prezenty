import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prezenty/pages/signup.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> with TickerProviderStateMixin {
  late TabController _controller;
  final List<Tab> topTabs = <Tab>[
    Tab(text: 'Details'),
    Tab(text: 'Set PIN'),
    Tab(text: 'Reset PIN'),
    Tab(text: 'Load Money'),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: 4, vsync: this, animationDuration: Duration.zero);
  }

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
        child: Container(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text(
                  'My cards',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/card1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/card2.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage("assets/images/card3.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 0.23.sh,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 21 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    initialPage: 1,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.5,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'Premium Prepaid Card',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10.sp),
                      ),
                      Text(
                        'Prezenty',
                        style: TextStyle(fontSize: 8.sp, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromARGB(255, 16, 8, 129)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.white,
                                  size: 10.sp,
                                ),
                              )),
                          Text(
                            ' John Doe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: TabBar(
                      isScrollable: false,
                      controller: _controller,
                      indicatorColor: Colors.pink,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: topTabs,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  height: 0.7.sh,
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _controller,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 9,
                                    spreadRadius: 4,
                                    // changes positin of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: Colors.grey[200]),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 12,
                                              right: 12,
                                              top: 22,
                                              bottom: 22),
                                          child: Text(
                                            '₹400',
                                            style: TextStyle(fontSize: 15.sp),
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Availble Balance'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text('Transactions'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 9,
                                      spreadRadius: 4,
                                      // changes positin of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '20 March 2022',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '₹400',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          'bgtgcvgcvgv',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 7.sp),
                                        ),
                                      ),
                                      Text(
                                        'UPI jai hind petroleum',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'q64646453356@ybi',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'SBOYBLUEUPI-2563624523665362UPI',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'Ref num-25334667426317',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 9,
                                      spreadRadius: 4,
                                      // changes positin of shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '30 April 2022',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '₹400',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          'bhhbbhbhcggtgcvgcvgv',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 7.sp),
                                        ),
                                      ),
                                      Text(
                                        'UPI jai hind petroleum',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'q64646453356@ybi',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'SBOYBLUEUPI-2563624523665362UPI',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                      Text(
                                        'Ref num-25334667426317',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 7.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 9,
                                    spreadRadius: 4,
                                    // changes positin of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'New 6 digit PIN',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: '******',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Confirm 6 Digit PIN',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: '******',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, bottom: 30),
                                      child: Container(
                                        width: 0.9.sw,
                                        height: 0.067.sh,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[900],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyCards()),
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
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 9,
                                    spreadRadius: 4,
                                    // changes positin of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Your Old PIN',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: '******',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text('Forgot PIN?'),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'New PIN',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: '******',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Confirm PIN',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: '******',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, bottom: 10),
                                      child: Container(
                                        width: 0.9.sw,
                                        height: 0.067.sh,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[900],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyCards()),
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
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 9,
                                    spreadRadius: 4,
                                    // changes positin of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'John Deo',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.sp),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color.fromARGB(255, 26, 34, 126)),
                                            borderRadius: BorderRadius.circular(4)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 3),
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8.sp,
                                                  color: Colors.indigo[900]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 0.05.sh,color: Color.fromARGB(255, 196, 186, 186),indent: 5,endIndent: 5,),
                                   Text(
                                     'Mobile Phone Number',
                                     style: TextStyle(
                                         fontSize: 7.sp,
                                         color: Colors.grey),
                                   ),
                                   Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '+91********30',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.sp),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Color.fromARGB(255, 26, 34, 126)),
                                            borderRadius: BorderRadius.circular(4)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 3),
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8.sp,
                                                  color: Colors.indigo[900]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        
                                        Text('We have this number registered',style: TextStyle(color: Colors.green),)
                                      ],
                                    ),
                                                                        Divider(height: 0.05.sh,color: Color.fromARGB(255, 196, 186, 186),indent: 5,endIndent: 5,),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: Text(
                                        'Official Valid document ID',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 7),
                                      child: Container(
                                          height: 0.067.sh,
                                          width: 0.9.sw,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.pinkAccent)),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Icon(
                                                  Icons.arrow_drop_down_sharp),
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 117, 105, 105)),
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
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
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
                                      child: Container(
                                        height: 0.067.sh,
                                        width: 0.9.sw,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.pinkAccent)),
                                        child: const TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Enter Number',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, bottom: 10),
                                      child: Container(
                                        width: 0.9.sw,
                                        height: 0.067.sh,
                                        decoration: BoxDecoration(
                                          color: Colors.indigo[900],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyCards()),
                                            );
                                          },
                                          child: const Text('Continue'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.grey[200],
          height: 0.17.sh,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 0.07.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: Color.fromARGB(255, 23, 31, 126))),
                    child: Center(child: Text('Request Physical Card'))),
              ),
              Container(
                color: Colors.pinkAccent[700],
                height: 0.07.sh,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 10.sp,
                          ),
                          Text(
                            '  Contact Us',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      thickness: 0.6.sp,
                      indent: 0.02.sh,
                      endIndent: 0.02.sh,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.percent,
                            color: Colors.white,
                            size: 10.sp,
                          ),
                          Text(
                            '  Offers',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
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
