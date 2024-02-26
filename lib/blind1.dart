import 'package:flutter/material.dart';
import 'check_number.dart';

int score = 0;

class blind1 extends StatefulWidget {
  const blind1({Key? key}) : super(key: key);

  @override
  State<blind1> createState() => _Text1State();

}

class _Text1State extends State<blind1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 70,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        score = 0;
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind2()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('6',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 70,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        score = 0;
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => blind2()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('6',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        score = 0;
                        setState(() {
                          score++;
                          // Navigate to next page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind2()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('74',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 70,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        score = 0;
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind2()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('6',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class blind2 extends StatefulWidget {
  const blind2({Key? key}) : super(key: key);

  @override
  State<blind2> createState() => _blind2State();
}

class _blind2State extends State<blind2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          score++;
                          // Navigate to next page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind3()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('45',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          // Navigate to next page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind3()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('15',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind3()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('46',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind3()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('40',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class blind3 extends StatefulWidget {
  const blind3({Key? key}) : super(key: key);

  @override
  State<blind3> createState() => _blind3State();
}

class _blind3State extends State<blind3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind4()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('11',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          score++;
                          // Navigate to next page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind4()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('12',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind4()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('16',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind4()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('14',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class blind4 extends StatefulWidget {
  const blind4({Key? key}) : super(key: key);

  @override
  State<blind4> createState() => _blind4State();
}

class _blind4State extends State<blind4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b7.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind7()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('9',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          score++;
                          // Navigate to next page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind7()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('6',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind7()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('96',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => blind7()),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('23',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class blind7 extends StatefulWidget {
  const blind7({Key? key}) : super(key: key);

  @override
  State<blind7> createState() => _blind7State();
}

class _blind7State extends State<blind7> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              width: double.maxFinite,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b5.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ScorePage(score: score)),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('11',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScorePage(score: score)),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('16',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          score++;
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ScorePage(score: score)),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('12',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 75,
                    height: 40,
                    child: ElevatedButton(

                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => ScorePage(score: score)),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(

                        primary: Colors.white, // Background color
                        onPrimary: Colors.black, // Text color
                        side: const BorderSide(color: Colors.blue), // Border color
                      ),
                      child: const Text('14',style: TextStyle(fontSize: 35),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScorePage extends StatelessWidget {
  final int score;

  const ScorePage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score:',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              '$score',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 70,),
            SizedBox(
              width: 250,
              height: 40,
              child: ElevatedButton(

                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => check_num()));
                },
                style: ElevatedButton.styleFrom(

                  primary: Colors.white, // Background color
                  onPrimary: Colors.black, // Text color
                  side: const BorderSide(color: Colors.blue), // Border color
                ),
                child: const Text('Done',style: TextStyle(fontSize: 35),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
