import 'package:flutter/material.dart';
import 'package:venkatesh_thanushree_mapg_mini_project/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp>
    with TickerProviderStateMixin {
  late AnimationController _bounceController;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();

    _bounceController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _bounceAnimation = Tween<double>(
      begin: 0.0,
      end: 100.0,
    ).animate(
      CurvedAnimation(
        parent: _bounceController,
        curve: Curves.bounceOut, // Use a bounce-out curve
      ),
    );

    // Add a delay and then start the bounce animation
    Future.delayed(Duration(seconds: 1), () {
      _bounceController.forward();
    });

    // Add another delay and then navigate to FirstPage
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AutoImageSlider()),
      );
    });
  }

  @override
  void dispose() {
    _bounceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue, // Dark blue at the top
              Colors.lightBlue, // Light blue in the middle
              Colors.white, // White at the bottom
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _bounceController,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0.0, -_bounceAnimation.value),
                child: Image.asset(
                  'images/nplogo.png', // Replace with your image path
                  width: _bounceAnimation.value + 200,
                  height: _bounceAnimation.value + 200,
                  alignment: Alignment.center,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
