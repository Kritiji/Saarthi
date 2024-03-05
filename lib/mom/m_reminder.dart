import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';


void main() {
  runApp(MReminder());
}

class Reminder {
  String title;
  String description;
  DateTime dateTime;

  Reminder({
    required this.title,
    required this.description,
    required this.dateTime,
  });
}

class MReminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReminderScreen(),
    );
  }
}

class ReminderScreen extends StatefulWidget {
  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  List<Reminder> reminders = [];

  void _showAddReminderDialog() {
    String title = '';
    String description = '';
    DateTime selectedDateTime = DateTime.now();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Add Reminder',
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  title = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (value) {
                  description = value;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                  );

                  if (pickedDate != null) {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );

                    if (pickedTime != null) {
                      selectedDateTime = DateTime(
                        pickedDate.year,
                        pickedDate.month,
                        pickedDate.day,
                        pickedTime.hour,
                        pickedTime.minute,
                      );
                    }
                  }
                },
                child: Text(
                  'Select Date and Time',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: Colors.grey[800])),
            ),
            ElevatedButton(
              onPressed: () {
                if (title.isNotEmpty && description.isNotEmpty) {
                  setState(() {
                    reminders.add(
                      Reminder(
                        title: title,
                        description: description,
                        dateTime: selectedDateTime,
                      ),
                    );
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saarthi', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink, // Change app bar color to pink
        elevation: 0,
      ),
      body: reminders.isEmpty
          ? Center(
        child: Text(
          'No reminders added yet.',
          style: TextStyle(fontSize: 22),
        ),
      )
          : ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.pink[50], // Change the card color here
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        reminders[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.pink,
                        ),
                      ),
                      Text(
                        '${reminders[index].dateTime.day}/${reminders[index].dateTime.month}/${reminders[index].dateTime.year} '
                            '${reminders[index].dateTime.hour}:${reminders[index].dateTime.minute}',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    reminders[index].description,
                    style: TextStyle(fontSize: 24, color: Colors.pink),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle Done button
                        },
                        icon: Icon(Icons.done, color: Colors.pink, size: 30),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle Edit button
                        },
                        icon: Icon(Icons.edit, color: Colors.pink, size: 30),
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle Delete button
                        },
                        icon: Icon(Icons.delete, color: Colors.pink, size: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddReminderDialog,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
