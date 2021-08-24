import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hiit_list/features/home_screen/model/home_screen_view_model.dart';

import 'package:table_calendar/table_calendar.dart';

class HomeScreenScreen extends Screen {
  final HomeScreenViewModel viewModel;

  HomeScreenScreen({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today_rounded),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(22.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Workout",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Today, August 24"),
              SizedBox(
                height: 20,
              ),
              TableCalendar(
                  calendarFormat: CalendarFormat.week,
                  headerVisible: false,
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2021, 8, 22),
                  lastDay: DateTime.utc(2021, 8, 28)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Select a routine",
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.black,
              ),
              label: "Progress"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.black,
              ),
              label: "Progress")
        ],
      ),
    );
  }
}
