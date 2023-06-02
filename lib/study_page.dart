import 'package:flutter/material.dart';

class StudyPage extends StatelessWidget {
  final List<String> subjects = [
    "Matematika",
    "Biologi",
    "Bhs. Inggris",
    "Bhs. Indonesia",
    "IPS",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #57535F
      appBar: AppBar(
        title: Text("Studiku"),
        backgroundColor: Color(0xFF222831), // AppBar color #222831
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF393E46), // List item color #393E46
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                title: Text(
                  subjects[index],
                  style: TextStyle(
                    color: Color(0xFFEEEEEE), // text color #EEEEEE
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
