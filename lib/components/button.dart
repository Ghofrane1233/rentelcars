// ignore_for_file: prefer_const_constructors

// ignore: duplicate_ignore
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyPageWithFooterButton extends StatelessWidget {
  const MyPageWithFooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page with Footer Button'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Main content of the page here
          Expanded(
            child: Center(
              child: Text('Main Content of the Page'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              buttonText: 'Footer Button',
              onPressed: () {
                // Define button action here
                // ignore: avoid_print
                print("Button Pressed!");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  // ignore: use_super_parameters
  const CustomButton({
    required this.buttonText,
    required this.onPressed,
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFECAE36),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 14,
        ),
      ),
    );
  }
}
