import 'package:flutter/material.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';
import 'package:minor_p/widgets/explore_section.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ExploreList1(),
      ),
      bottomNavigationBar: const BottomNavigator(
        current: 1,
      ),
    );
  }
}
