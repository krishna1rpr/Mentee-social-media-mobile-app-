import 'package:flutter/material.dart';
// import 'post_jobs.dart';

import 'explore_page.dart';
import 'event_page.dart';
import 'job_page.dart';
//import 'profile_page.dart';
import 'profile/profile_screen.dart';

import 'package:minor_p/widgets/bottom_navigator.dart';

import 'package:minor_p/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ExplorePart(
                name: "Start Exploring",
                content: "Search for various events happening near you.",
                image: "map.jpg",
              ),
              ExplorePart(
                  name: "Events",
                  content: "Search for various events happening around you.",
                  image: "events.jpeg"),
              ExplorePart(
                  name: "Opportunities",
                  content: "Your dream job could be just a few clicks away!",
                  image: "opportunities.jpeg"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(
        current: 0,
      ),
    );
  }
}

// class ExploreSection extends StatelessWidget {
//   const ExploreSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.black54,
//         border: Border.all(width: 3),
//       ),
//       child: Column(children: [
//         Image.asset("assets/images/map.jpg"),
//         Container(
//           margin: EdgeInsets.all(10),
//           child: const Text(
//             "Explore various Domains and make your mark in the one's that you love.",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         )
//       ]),
//     );
//   }
// }

class ExplorePart extends StatelessWidget {
  final String content;
  final String name;
  final String image;
  const ExplorePart(
      {super.key,
      required this.content,
      required this.name,
      required this.image});

  // late String content;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.primary,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          color: AppTheme.primary,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/$image"),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppTheme.cardColor),
          // style: ButtonStyle(backgroundColor: MaterialColor.),
          onPressed: () {},
          child: Text(name),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
