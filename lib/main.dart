import 'dart:io';

import 'package:flutter/material.dart';
import 'categories.dart';
import 'eyeml.dart';
import 'webview.dart';
import 'splash_screen.dart';
import 'check_number.dart';
import 'package:image_picker/image_picker.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭';

   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent
      ),

      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xFFFFFFFF))),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text("Let's Illuminating eye health through ML",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.grey)),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text("__̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲_̲",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 27,color: Color(
                      0xFF5E5E5E))),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),

                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 380,
                          height: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/ml.png').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text(" Eye analysis With ML        ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(
                                    0xFFD2D2D2)),),

                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {
                      // _getImage(context);
                      //_getCameraImage(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eyeinput()),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text("Check Your Eye",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.grey)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25,
                            spreadRadius: 0,
                            offset: Offset(10, 10),
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        padding: const EdgeInsets.all(12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              width: 380,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset('assets/images/num.png').image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Eye vision test",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("       "),Text("Checking your eye number with test",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  ],
                                ),
                              )
                          ),
                        ),
                        onPressed: () {
                          check_numb(context);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(10, 10),
                              ),
                            ],
                          ),
                          child: MaterialButton(
                            padding: const EdgeInsets.all(12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                  width: 180,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset('assets/images/eye1.png').image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Eye Exercises",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            onPressed: () {
                              // shoe1(context);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(10, 10),
                              ),
                            ],
                          ),
                          child: MaterialButton(
                            padding: const EdgeInsets.all(12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                  width: 180,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: Image.asset('assets/images/eye2.png').image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Eye",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Text("𝑶𝒕𝒉𝒆𝒓 𝒇𝒆𝒂𝒕𝒖𝒓𝒆𝒔..",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23,color: Colors.black)),
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 380,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/eyeq.png').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("The eye is",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                                Text("the jewel of ",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                                Text("the body.",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 55,
                )
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF405AB0),
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color(0xFF405AB0)),
                    accountName: Text(
                      "abc",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text("abc@gmail.com"),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color(0xFF9DB0FA),
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 30.0, color: Colors.black),
                      ), //Text
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ), //DrawerHeader
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          bottomSheet: Positioned(
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(10, 10),
                  ),
                ],
              ),
              // Adjust the width as needed
              height: 50.0, // Adjust the height as needed
              child: BottomAppBar(
                color: Color(0xFF151515),
                shape: const CircularNotchedRectangle(),
                notchMargin: 4.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage(title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭')),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.explore),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.category),
                      onPressed: () {
                        categoties(context);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        web(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


void web(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
}
void categoties(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Categories()));
}

void check_numb(BuildContext context) {
  Navigator.push(
      context,
  MaterialPageRoute(builder: (context) => check_num()));
}


