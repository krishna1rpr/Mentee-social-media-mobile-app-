import 'package:flutter/material.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';

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
        child: const Center(
          child: Text("Explore Page"),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(current: 1),
    );
  }
}
