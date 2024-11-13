import 'package:flutter/material.dart';
import 'package:rental/components/button.dart';
import 'package:rental/pages/Liste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

void onPressed(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Liste()),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter, // Aligns the button at the bottom center
          child: Padding(
            padding: const EdgeInsets.only(bottom: 90.0), // Adds spacing from the bottom
            child: CustomButton(
              buttonText: "Get Started",
              onPressed: () => onPressed(context),
            ),
          ),
        ),
      ),
    );
  }
}
