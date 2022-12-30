import 'package:flutter/material.dart';
import 'package:minor_p/utils/theme.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';

import 'package:vertical_card_pager/vertical_card_pager.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text("Events Page"),
        ),
      ),
    );
  }
}

class EventPage2 extends StatefulWidget {
  const EventPage2({super.key});

  @override
  State<EventPage2> createState() => _EventPage2State();
}

class _EventPage2State extends State<EventPage2> {
  final List<String> titles = [
    "In-Campus",
    "Off-Campus",
    "Placement",
    "Placement",
    "Placement",
    "Placement",
  ];

  final List<Widget> images = [
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: VerticalCardPager(
                textStyle: const TextStyle(
                    fontFamily: "Bevan",
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
                titles: titles,
                images: images,
                onPageChanged: (page) {
                  // print(page);
                },
                onSelectedItem: (index) {},
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(
        current: 2,
      ),
    );
  }
}
