import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #222831
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', height: 150.0),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF393E46), // button color #393E46
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color(0xFFEEEEEE)),
                    ), // text color #EEEEEE
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
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
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // background color of button
                onPrimary: Colors.black, // color of text and icon
              ),
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/588px-Google_%22G%22_Logo.svg.png?20230305195327',
                height: 1,
                width: 1,
              ),
              label: Text('Login with Google'),
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              }, // Handle Google login action.
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4267B2), // background color of button
                onPrimary: Colors.white, // color of text and icon
              ),
              icon: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/600px-Facebook_f_logo_%282019%29.svg.png',
                height: 1,
                width: 1,
              ),
              label: Text('Login with Facebook'),
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              }, // Handle Facebook login action.
            ),
          ],
        ),
      ),
    );
  }
}
