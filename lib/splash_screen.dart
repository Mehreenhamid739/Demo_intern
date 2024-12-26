import 'dart:async';

import 'package:demo_intern_design/login_screen.dart';
import 'package:flutter/material.dart';

class Splishscreen extends StatefulWidget {
  const Splishscreen({super.key});

  @override
  State<Splishscreen> createState() => _SplishscreenState();
}

class _SplishscreenState extends State<Splishscreen> {
  @override
  initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/b.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.black.withOpacity(0.5)])),
            child: Center(
                child: Text(
              'Intern Demo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                inherit: false,
              ),
            )),
          )
        ],
      ),
    );
  }
}
