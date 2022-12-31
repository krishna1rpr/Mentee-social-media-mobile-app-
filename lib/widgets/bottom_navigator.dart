import 'package:flutter/material.dart';
import '../screeens/event_page.dart';
import '../screeens/explore_page.dart';
import '../screeens/home_page.dart';
import '../screeens/job_page.dart';
import '../screeens/mentor_page.dart';
import '../screeens/profile/profile_screen.dart';
import '../utils/theme.dart';

class BottomNavigator extends StatefulWidget {
  final int current;

  const BottomNavigator({Key? key, required this.current}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  late int _selectedIndex = widget.current;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppTheme.primary,
      currentIndex: _selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: AppTheme.primary,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Explore",
          backgroundColor: AppTheme.primary,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event),
          label: "Events",
          backgroundColor: AppTheme.primary,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: "Jobs",
          backgroundColor: AppTheme.primary,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add_rounded),
          label: "Mentors",
          backgroundColor: AppTheme.primary,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
          backgroundColor: AppTheme.primary,
        ),
      ],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );

    if (_selectedIndex == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else if (_selectedIndex == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ExplorePage()),
      );
    } else if (_selectedIndex == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const EventPage2()),
      );
    } else if (_selectedIndex == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const JobPage()),
      );
    } else if (_selectedIndex == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MentorPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
        // MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
  }
}
