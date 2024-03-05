import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}
class _EventCalendarScreenState extends State<EventCalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;

  Map<String, List> mySelectedEvents = {};

  final titleController=TextEditingController();
  final descpController=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate= _focusedDay;

    loadPreviousEvents();  //backend
  }
  loadPreviousEvents() //backend
  {
    mySelectedEvents={
      "2024-02-21":
      [
        {"eventDescp":"11","eventTitle":"111"},
        {"eventDescp":"22","eventTitle":"22" }
      ],
    };

  }



  List _listOfDayEvents(DateTime dateTime)
  {
    if(mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!=null)
    {
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    }
    else
    {
      return [];
    }
  }
  _showAddEventDialog() async{
    await showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        title: const Text(
          'Add New Event',
          textAlign: TextAlign.center,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: descpController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(labelText: 'Description'),
            ),

          ],
        ),
        actions: [
          TextButton(
              onPressed:()=>Navigator.pop(context),
              child: const Text('Cancel')
          ),
          TextButton(
            child: const Text('Add Event'),
            onPressed: () {
              if (titleController.text.isEmpty &&
                  descpController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Required title and description'),
                    duration: Duration(seconds: 4),
                  ),
                );
                return;
              } else {
                print(titleController.text);
                print(descpController.text);

                setState(() {
                  if (mySelectedEvents[DateFormat('yyyy-MM-dd')
                      .format(_selectedDate!)] !=null){
                    mySelectedEvents[DateFormat('yyyy-MM-dd')
                        .format(_selectedDate!)]
                        ?.add({
                      "eventTitle":titleController.text,
                      "eventDescp":descpController.text,
                    });
                  } else {
                    mySelectedEvents[DateFormat('yyyy-MM-dd')
                        .format(_selectedDate!)] = [
                      {
                        "eventTitle": titleController.text,
                        "eventDescp": descpController.text,
                      }
                    ];
                  }

                });
                print("New Event for backend developer ${json.encode(mySelectedEvents)}");
                titleController.clear();
                descpController.clear();
                Navigator.pop(context);
                return;
              }
            },
          )
        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Calender'),
      ),


      body: Column(children: [
        TableCalendar(
          firstDay: DateTime(1900, 1, 1), // Adjusted first day
          lastDay: DateTime(3000, 12, 31), // Adjusted last day
          focusedDay:_focusedDay ,
          calendarFormat: _calendarFormat,


          onDaySelected: (selectedDay,focusedDay){
            if(!isSameDay(_selectedDate,selectedDay)) {
              setState(() {
                _selectedDate=selectedDay;
                _focusedDay=focusedDay;

              });
            }
          },
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDate,day);
          },
          onFormatChanged: (format) {
            if(_calendarFormat !=format){
              setState(() {
                _calendarFormat=format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          eventLoader: _listOfDayEvents,
        ),
        ..._listOfDayEvents(_selectedDate!).map(
                (myEvents) => ListTile(
              leading: const Icon(
                Icons.done,
                color: Colors.pinkAccent,
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child:Text('Event Title:  ${myEvents['eventTitle']}'),
              ),
            )
        )
      ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddEventDialog(),
        label: const Text('Add Event'),
      ),
    );
  }
}
