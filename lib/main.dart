import 'dart:convert';

import 'package:belajar_github/Bima/Controller/ControllerAbout.dart';
import 'package:belajar_github/Bima/Controller/ControllerRegister.dart';
import 'package:belajar_github/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ControllerRegister()); // Initialize your controller here
    Get.put(ControllerAbout()); // Initialize your controller here
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        home: NewApp(),
      ),
    );
  }
}

class Holiday {
  final String holidayDate;
  final String holidayName;
  final bool isNationalHoliday;

  Holiday({
    required this.holidayDate,
    required this.holidayName,
    required this.isNationalHoliday,
  });

  factory Holiday.fromJson(Map<String, dynamic> json) {
    return Holiday(
      holidayDate: json['holiday_date'],
      holidayName: json['holiday_name'],
      isNationalHoliday: json['is_national_holiday'],
    );
  }
}

class NewApp extends StatefulWidget {
  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  List<Holiday> holidays = [];
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();
    fetchHolidays();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier([]);
  }

  Future<void> fetchHolidays() async {
    final url = Uri.parse('https://api-harilibur.vercel.app/api');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> responseData = json.decode(response.body);
      final List<Holiday> fetchedHolidays =
          responseData.map((data) => Holiday.fromJson(data)).toList();

      setState(() {
        holidays = fetchedHolidays;
      });
    } else {
      throw Exception('Failed to load holidays');
    }
  }

  List<Event> _getEventsForDay(DateTime day) {
    final List<Event> events = [];
    final formattedDay =
        '${day.year}-${_twoDigits(day.month)}-${_twoDigits(day.day)}';
    for (final holiday in holidays) {
      if (holiday.holidayDate == formattedDay) {
        events.add(Event(holiday.holidayName));
      }
    }
    return events;
  }

  String _twoDigits(int n) {
    if (n >= 10) return "$n";
    return "0$n";
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
      _rangeStart = null;
      _rangeEnd = null;
      _rangeSelectionMode = RangeSelectionMode.toggledOff;
      _selectedEvents.value = _getEventsForDay(selectedDay);
    });
  }

  void _searchCalendar() async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 10),
      lastDate: DateTime(DateTime.now().year + 10),
    );

    if (selectedDate != null) {
      setState(() {
        _selectedDay = selectedDate;
        _focusedDay = selectedDate;
        _rangeStart = null;
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
        _selectedEvents.value = _getEventsForDay(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TableCalendar - Events'),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: _searchCalendar,
                child: Text('Search Periode (Bulan Tahun)')),
            TableCalendar<Event>(
              firstDay: DateTime.now().subtract(Duration(days: 365)),
              lastDay: DateTime.now().add(Duration(days: 365)),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              calendarFormat: _calendarFormat,
              holidayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeSelectionMode: _rangeSelectionMode,
              eventLoader: _getEventsForDay,
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                outsideTextStyle: TextStyle(color: bgRed),
                outsideDaysVisible: true,
                holidayTextStyle: TextStyle(color: bgRed),
              ),
              onDaySelected: _onDaySelected,
              onRangeSelected: (start, end, focusedDay) {
                setState(() {
                  print('bergerak');
                  _selectedDay = null;
                  _focusedDay = focusedDay;
                  _rangeStart = start;
                  _rangeEnd = end;
                  _rangeSelectionMode = RangeSelectionMode.toggledOn;
                  _selectedEvents.value = _getEventsForDay(focusedDay);
                });
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });

                  print(' ini bergerak');
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;

                print('eh bergerak');
              },
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ValueListenableBuilder<List<Event>>(
                valueListenable: _selectedEvents,
                builder: (context, value, _) {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListTile(
                          onTap: () => print('${value[index]}'),
                          title: Text('${value[index]}'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Event {
  final String title;
  const Event(this.title);
  @override
  String toString() => title;
}
