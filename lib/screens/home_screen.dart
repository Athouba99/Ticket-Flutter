import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/widgets/event.dart';
import 'package:ticket/widgets/featured_event_view.dart';
import 'package:ticket/utils/app_styling.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        SizedBox(height: 7),
                        Text('Book Tickets', style: Styles.headLineStyle),
                      ],
                    ),
                  ),
                  Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('lib/assets/img_1.png'))))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      SizedBox(width: 3),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Events', style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      print('you are tapping view all');
                    },
                    child: Text('view all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [EventView(), EventView(), EventView()],
                  )),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Events', style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      print('you are tapping view all');
                    },
                    child: Text('view all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  )
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [EventsView2(), EventsView2()],
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
