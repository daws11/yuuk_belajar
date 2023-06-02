import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #57535F
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', height: 150.0),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                fillColor: Color(0xFFEEEEEE), // form color #EEEEEE
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                fillColor: Color(0xFFEEEEEE), // form color #EEEEEE
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Color(0xFFEEEEEE), // form color #EEEEEE
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Color(0xFFEEEEEE), // form color #EEEEEE
                filled: true,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                fillColor: Color(0xFFEEEEEE), // form color #EEEEEE
                filled: true,
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/login')
              }, // Handle register action.
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF393E46), // button color #393E46
              ),
              child: Text(
                'Register',
                style: TextStyle(color: Color(0xFFEEEEEE)),
              ), // text color #EEEEEE
            ),
          ],
        ),
      ),
    );
  }
}
