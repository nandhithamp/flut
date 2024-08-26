import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart'; // Import the intl package for DateFormat

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _dateFormatter = DateFormat('dd MMMM yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calendar')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _showCalendarPicker(context),
            child: Icon(Icons.calendar_today),
          ),
          SizedBox(height: 20),
          Text(
            'Selected Date: ${_dateFormatter.format(_selectedDate)}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  void _showCalendarPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Date'),
          contentPadding: EdgeInsets.all(16.0), // Add padding
          content: SizedBox(
            width: double.minPositive, // Adjust width if needed
            height: 400, // Adjust height if needed
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
              ),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _selectedDate,
              selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ),
        );
      },
    );
  }
}
