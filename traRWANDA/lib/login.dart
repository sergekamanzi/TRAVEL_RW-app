import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage.dart'; // Import HomePage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Column(
        children: [
          Flexible(
            flex: 3, 
            child: Container(
              color: Color(0xFF004D40), 
              width: double.infinity,
              child: Center(
                child: Image.asset(
                  'assets/images/logo3.png', 
                  height: 80,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5, 
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 24), 
                  _buildTextField('Email'),
                  SizedBox(height: 16),
                  _buildTextField('Password', obscureText: true),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            onThemeChanged: (bool) {}, 
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF004D40), 
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'or sign in with',
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialIcon(FontAwesomeIcons.google, Colors.red),
                      SizedBox(width: 16),
                      _buildSocialIcon(FontAwesomeIcons.instagram, Colors.purpleAccent),
                      SizedBox(width: 16),
                      _buildSocialIcon(FontAwesomeIcons.facebookF, Colors.blue),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Color(0xFF004D40)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
      },
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color.withOpacity(0.1),
        child: FaIcon(
          icon,
          color: color,
          size: 20,
        ),
      ),
    );
  }
}
