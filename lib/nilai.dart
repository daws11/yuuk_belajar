import 'package:flutter/material.dart';

class Subject {
  final String name;
  final double attendance;
  final String grade;

  Subject({required this.name, required this.attendance, required this.grade});
}

class GradePage extends StatelessWidget {
  final List<Subject> subjects = [
    Subject(name: "Matematika", attendance: 85.5, grade: 'A'),
    Subject(name: "Biologi", attendance: 90.0, grade: 'B'),
    Subject(name: "Bhs. Inggris", attendance: 95.0, grade: 'AB'),
    Subject(name: "Bhs. Indonesia", attendance: 90.0, grade: 'A'),
    Subject(name: "IPS", attendance: 88.0, grade: 'BC'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #57535F
      appBar: AppBar(
        title: Text("Nilai"),
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
                  'Nilai: ${subjects[index].grade}',
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
