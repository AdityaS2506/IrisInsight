import 'package:flutter/material.dart';

class Test4 extends StatefulWidget {
  const Test4({Key? key}) : super(key: key);

  @override
  State<Test4> createState() => _Text1State();
}

class _Text1State extends State<Test4> {
  @override
  // void initState() {
  //   super.initState();
  //   // Navigate to PageTwo after 8 seconds
  //   Future.delayed(Duration(seconds: 8), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Text3()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Page : 4",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 70),),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/e4.png'),
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