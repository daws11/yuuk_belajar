import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57535F), // background color #57535F
      appBar: AppBar(
        title: Text('Kalender'),
        backgroundColor: Color(0xFF222831), // AppBar color #222831
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Color(0xFF222831), // today color #222831
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Color(0xFF393E46), // selected color #393E46
              shape: BoxShape.circle,
            ),
            defaultTextStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
            weekendTextStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
            weekendStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
          ),
          headerStyle: HeaderStyle(
            titleTextStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
            formatButtonTextStyle:
                TextStyle(color: Color(0xFFEEEEEE)), // text color #EEEEEE
            leftChevronIcon: Icon(Icons.chevron_left,
                color: Color(0xFFEEEEEE)), // chevron color #EEEEEE
            rightChevronIcon: Icon(Icons.chevron_right,
                color: Color(0xFFEEEEEE)), // chevron color #EEEEEE
          ),
        ),
      ),
    );
  }
}
