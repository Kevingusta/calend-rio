import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 3, now.day);
var lastDay = DateTime(now.year, now.month + 3, now.day);
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
   CalendarFormat format = CalendarFormat.twoWeeks;

  @override
  Widget build(BuildContext context) {
    return Column(
  children:[
    TableCalendar(
      focusedDay: now,
      lastDay: lastDay,
      firstDay: firstDay,
      calendarFormat: format,
      startingDayOfWeek: StartingDayOfWeek.monday,
      availableCalendarFormats: const {
        CalendarFormat.month: 'Mês',
        CalendarFormat.twoWeeks: '2 Semanas',
        CalendarFormat.week: 'Semana',
      },
      headerStyle: HeaderStyle(
        leftChevronIcon: const Icon(Icons.chevron_left,size: 24, color: Colors.black54,),
        rightChevronIcon: const Icon(Icons.chevron_right,size: 24, color: Colors.black54,),
        headerPadding: EdgeInsets.zero,
        formatButtonVisible: true,
        formatButtonShowsNext: false,
        formatButtonDecoration: BoxDecoration(
          color: Colors.blueGrey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          
        ),
        formatButtonTextStyle: const TextStyle(color: Colors.white, fontSize: 12),
        titleTextStyle: const TextStyle(color: Colors.black),
        titleCentered: true,
      ),
      calendarStyle:  CalendarStyle( 
      selectedDecoration: const BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.rectangle,
      ),
      selectedTextStyle: const TextStyle(color: Colors.white),

      todayDecoration: BoxDecoration(
        color: Color.fromARGB(255, 7, 81, 165),
        shape: BoxShape.circle,
      ),
      todayTextStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),

      defaultDecoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle
      ),
      defaultTextStyle: const TextStyle(
        color: Colors.black54),
        weekendDecoration: const BoxDecoration(
          color: Colors.transparent, shape: BoxShape.rectangle
        ),
        weekendTextStyle: TextStyle(color: Colors.black54)

      ),
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day){
          String text;
          if(day.weekday == DateTime.sunday){
            text = 'Domingo';
          }else if(day.weekday == DateTime.monday){
            text = 'Segunda';
          }else if(day.weekday == DateTime.tuesday){
            text = 'Terça';
          }else if(day.weekday == DateTime.wednesday){
            text = 'Quarta';
        } else if(day.weekday == DateTime.thursday){
          text = 'Quinta';
        }
        else if(day.weekday == DateTime.friday){
          text = 'Sexta';
        }
        else if(day.weekday == DateTime.saturday){
          text = 'Sabado';
        }else {
          text = '';
        }
        return Center(child: Text(text, style: const TextStyle(color: Colors.black54),)
        );
        },
      ),
    ),
  ],
  );
  }
  }
