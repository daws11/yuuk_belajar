import 'package:flutter/material.dart';
import 'study_page.dart';
import 'presensi.dart';
import 'nilai.dart';
import 'Kalender.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
        backgroundColor: Color(0xFF222831), // background color #222831
      ),
      backgroundColor: Color(0xFF57535F), // background color #57535F
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF222831), // box color #222831
                    borderRadius:
                        BorderRadius.circular(10.0), // rounded corners
                  ),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg'), // replace with your image url
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Andi Aswan',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white)), // text color white
                          Text('andiaswal@gmail.com',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white)), // text color white
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    padding:
                        EdgeInsets.all(2.0), // Adjust this for overall padding
                    mainAxisSpacing: 2.0, // Adjust this for vertical spacing
                    crossAxisSpacing: 2.0, // Adjust this for horizontal spacing
                    children: _gridMenu(context),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF222831), // background color of button
                    onPrimary: Color(0xFFEEEEEE), // color of text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _gridMenu(BuildContext context) {
    return <Widget>[
      _menuItem(context, Icons.book, 'Studiku', StudyPage()),
      _menuItem(context, Icons.calendar_today, 'Kalender', CalendarPage()),
      _menuItem(context, Icons.assessment, 'Nilai', GradePage()),
      _menuItem(context, Icons.present_to_all, 'Presensi', AttendancePage()),
    ];
  }

  Widget _menuItem(
      BuildContext context, IconData icon, String title, Widget page) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.all(2.0), // Adjust this for padding around each button
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF222831), // background color
              onPrimary: Color(0xFFEEEEEE), // icon color
              shape: CircleBorder(), // make the button a circle
              padding: EdgeInsets.all(20), // the size of the circle
            ),
            onPressed: () {
              if (page != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              }
            }, // handle button press
            child: Icon(icon, size: 50.0), // the icon inside the button
          ),
        ),
        Text(title),
      ],
    );
  }
}
