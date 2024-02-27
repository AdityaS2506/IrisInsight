import 'package:flutter/material.dart';
import 'blind1.dart';
import 'test1.dart';
import 'main.dart';


class check_num extends StatefulWidget {
  const check_num({Key? key}) : super(key: key);
  @override
  State<check_num> createState() => _check_numState();
}

class _check_numState extends State<check_num> {
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
          appBar: AppBar(
            title: Text("𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭", style: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xFFFFFFFF))),
            centerTitle: true,
            backgroundColor: Color(0xFF151515),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 380,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        eyenumtest1(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343E80),
                        // side: const BorderSide(color: Color(0xFF386CE2), width: 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "1. eye number checkup",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/images/eyenumber.png',),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 380,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        eyeblind(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343E80),
                        // side: const BorderSide(color: Color(0xFF386CE2), width: 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "2. eye color blindness",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/images/eyeblind.png',),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 380,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        eyeblind(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF343E80),
                        // side: const BorderSide(color: Color(0xFF386CE2), width: 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "3. find color",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/images/eyeblind.png',),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
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
                color: Color(0xFF343E80),
                shape: const CircularNotchedRectangle(),
                notchMargin: 4.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: const Icon(Icons.home), onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage(title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭')),
                      );
                    }),
                    IconButton(
                      icon: const Icon(Icons.explore),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.category),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.person),
                      onPressed: () {

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

void eyenumtest1(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Test1()));
}

void eyeblind(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => blind1()));
}