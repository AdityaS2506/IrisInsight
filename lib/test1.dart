import 'package:flutter/material.dart';

import 'Test2.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Text1State();
}

class _Text1State extends State<Test1> {
  @override
  void initState() {
    super.initState();
    // Navigate to PageTwo after 8 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Test2()),
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
            Text("Page : 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 70),),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/e1.png'),
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



// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
// import 'dart:async';
//
// class VoiceControlDemo extends StatefulWidget {
//   const VoiceControlDemo({Key? key}) : super(key: key);
//
//   @override
//   _VoiceControlDemoState createState() => _VoiceControlDemoState();
// }
//
// class _VoiceControlDemoState extends State<VoiceControlDemo> {
//   late stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = '';
//
//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//     _listen();
//   }
//
//   Future<void> _listen() async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (status) {
//           print('status: $status');
//         },
//         onError: (error) {
//           print('error: $error');
//         },
//       );
//
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (result) {
//             setState(() {
//               _text = result.recognizedWords.toLowerCase();
//               print('Result: $_text');
//               if (_text.contains('ok')) {
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => PageTwo()),
//                 );
//               } else if (_text.contains('no')) {
//                 check_numb(context);
//               }
//             });
//           },
//         );
//       }
//     } else {
//       setState(() => _isListening = false);
//       _speech.stop();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Voice Control Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               _isListening ? Icons.mic : Icons.mic_none,
//               size: 48.0,
//               color: Colors.blue,
//             ),
//             SizedBox(height: 20),
//             Text(
//               _isListening ? 'Listening...' : 'Not Listening',
//               style: TextStyle(fontSize: 20,color: Colors.white),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'You said: $_text',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void check_numb(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (context) => CheckNumberPage()),
//     );
//   }
// }
//
// class PageTwo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page Two'),
//       ),
//       body: Center(
//         child: Image.asset('assets/images/e2.png'),
//       ),
//     );
//   }
// }
//
// class CheckNumberPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Check Number Page'),
//       ),
//       body: Center(
//         child: Image.asset('assets/images/e3.png'),
//       ),
//     );
//   }
// }