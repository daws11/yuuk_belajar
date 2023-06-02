import 'package:flutter/material.dart';

class Subject {
  final String name;
  final double attendance;

  Subject({required this.name, required this.attendance});
}

class AttendancePage extends StatelessWidget {
  final List<Subject> subjects = [
    Subject(name: "Matematika", attendance: 85.5),
    Subject(name: "Biologi", attendance: 90.0),
    Subject(name: "Bhs. Inggris", attendance: 95.0),
    Subject(name: "Bhs. Indonesia", attendance: 90.0),
    Subject(name: "IPS", attendance: 88.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #57535F
      appBar: AppBar(
        title: Text("Presensi"),
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
                  subjects[index].name,
                  style: TextStyle(
                    color: Color(0xFFEEEEEE), // text color #EEEEEE
                  ),
                ),
                subtitle: Text(
                  '${subjects[index].attendance} %',
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
