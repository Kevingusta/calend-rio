import 'calendar_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(CalendarPage());
}

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calendario'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: CalendarScreen(),
      ),
    );
  }
}
