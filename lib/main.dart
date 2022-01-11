import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: "hero",
              child: SvgPicture.asset(
                'assets/drawing.svg',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text("Zoom"),
              onPressed: () => _launchSecondScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void _launchSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen()),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "hero",
          child: SvgPicture.asset(
            'assets/drawing.svg',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
