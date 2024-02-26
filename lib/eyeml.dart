import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

class eyeinput extends StatefulWidget {
  const eyeinput({Key? key}) : super(key: key);

  @override
  State<eyeinput> createState() => _eyeinputState();
}

class _eyeinputState extends State<eyeinput> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭",
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF112354)),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFF386CE3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _getImage(context),
                  child: Text('Pick Image'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _getCameraImage(context),
                  child: Text('Take Photo'),
                ),
                SizedBox(height: 400,),
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
                color: Color(0xFF386CE3),
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
                          MaterialPageRoute(
                            builder: (context) => MaterialApp(
                              // title of the application
                              title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭',
                              debugShowCheckedModeBanner: false, //for remove line
                              // theme of the widget
                              theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)),
                              // Inner UI of the application
                              home: const MyHomePage(title: '𝐈𝐫𝐢𝐬𝐈𝐧𝐬𝐢𝐠𝐡𝐭'),
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.explore),
                      onPressed: () {},
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

Future<void> _getImage(BuildContext context) async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    // Navigate to the next screen or perform any other action with the selected image
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImagePreviewScreen(imagePath: image.path)),
    );
  }
}

Future<void> _getCameraImage(BuildContext context) async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.camera);

  if (image != null) {
    // Navigate to the preview screen
    _navigateToPreviewScreen(context, image.path);
  }
}

void _navigateToPreviewScreen(BuildContext context, String imagePath) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ImagePreviewScreen(imagePath: imagePath)),
  );
}

class ImagePreviewScreen extends StatelessWidget {
  final String imagePath;

  const ImagePreviewScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Preview'),
      ),
      body: Center(
        child: Image.file(
          File(imagePath),
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
