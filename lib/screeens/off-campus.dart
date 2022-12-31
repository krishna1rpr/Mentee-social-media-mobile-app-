import 'package:flutter/material.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';
import '';

class OffCampus extends StatefulWidget {
  const OffCampus({super.key});

  @override
  State<OffCampus> createState() => _OffCampusState();
}

class _OffCampusState extends State<OffCampus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.back_hand,
            color: Colors.white,
          ),
        ),
        body: Container());
  }
}
