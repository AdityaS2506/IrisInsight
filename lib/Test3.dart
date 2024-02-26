import 'package:flutter/material.dart';

import 'Test4.dart';

class Test3 extends StatefulWidget {
  const Test3({Key? key}) : super(key: key);

  @override
  State<Test3> createState() => _Text1State();
}

class _Text1State extends State<Test3> {
  @override
  void initState() {
    super.initState();
    // Navigate to PageTwo after 8 seconds
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Test4()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Page : 3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 70),),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/e3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}