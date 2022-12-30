import 'package:flutter/material.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Center(
          child: Text("Job Page"),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(current: 3),
    );
  }
}
