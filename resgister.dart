import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart'; // Import the LoginPage

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the entire screen background to white
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Green background with a fixed height
              Container(
                height: 350, // Fixed height for the green section
                color: Color(0xFF004D40), // Dark green background
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo3.png', // Add your logo path here
                      height: 80,
                    ),
                  ],
                ),
              ),

              // "Create an account" text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
