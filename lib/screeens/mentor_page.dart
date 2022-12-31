import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:minor_p/utils/theme.dart';
import 'dart:convert';

import 'package:minor_p/widgets/bottom_navigator.dart';

class MentorPage extends StatefulWidget {
  const MentorPage({super.key});

  @override
  State<MentorPage> createState() => _MentorPageState();
}

class _MentorPageState extends State<MentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: CurrentJobOpenings(),
      bottomNavigationBar: BottomNavigator(current: 4),
    );
  }
}

class CurrentJobOpenings extends StatefulWidget {
  @override
  CurrentJobOpeningsState createState() => CurrentJobOpeningsState();
}

class CurrentJobOpeningsState extends State<CurrentJobOpenings> {
  List data = [];

  Future<String> getData() async {
    var response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = jsonDecode(response.body);
    });

    print(data[0]["id"]);

    return "Success!";
  }

  @override
  void initState() {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data == [] ? 0 : data.length,
      itemBuilder: (BuildContext context, int index) {
        String id = data[index]["id"].toString();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ListTile(
              tileColor: AppTheme.cardColor,
              textColor: Colors.white,
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://picsum.photos/200/300",
                ),
              ),
              title: Text(id),
              subtitle: Text(data[index]["title"]),
            ),
          ),
        );
      },
    );
  }
}
