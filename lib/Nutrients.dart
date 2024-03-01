import 'package:flutter/material.dart';
import 'package:shoes/eye20.dart';
import 'main.dart';

class Nutrients extends StatefulWidget {
  @override
  _NutrientsState createState() => _NutrientsState();
}

class _NutrientsState extends State<Nutrients> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPageIndex = 0;

  List<String> images = [
    'assets/images/eyenu1.png',
    'assets/images/eyenu2.png',
    'assets/images/eyenu3.png',
    'assets/images/eyenu4.png',
    'assets/images/eyenu5.png',
    'assets/images/eyenu6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/Frame.png',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Important Nutrients",
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20), // Adjust the value according to your preference
              ),
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      onPageChanged: (int index) {
                        setState(() {
                          _currentPageIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return AnimatedBuilder(
                          animation: _pageController,
                          builder: (context, child) {
                            double value = 1.0;
                            if (_pageController.hasClients &&
                                _pageController.position.haveDimensions) {
                              value = (_pageController.page! - index).abs(); // Take the absolute value
                              value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
                            }
                            return Center(
                              child: SizedBox(
                                height: value * 380,
                                child: child,
                              ),
                            );
                          },
                          child: Card(
                            elevation: 6.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                            child: Image.asset(images[index]),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
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
                            icon: const Icon(Icons.home, color: Colors.white),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyHomePage(title: 'IrisInsight')),
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.explore, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.category, color: Colors.white),
                            onPressed: () {
                              categoties(context);
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.person, color: Colors.white),
                            onPressed: () {
                              web(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
