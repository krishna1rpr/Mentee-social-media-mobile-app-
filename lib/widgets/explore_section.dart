import 'package:flutter/material.dart';
import 'package:minor_p/utils/theme.dart';

import './../data/explore.dart';

class ExploreList1 extends StatefulWidget {
  @override
  ExploreList1State createState() => ExploreList1State();
}

class ExploreList1State extends State<ExploreList1> {
  List data = exploreList1;

  // Future<String> getData() async {
  //   var response = await http.get(
  //       Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  //       headers: {"Accept": "application/json"});

  //   setState(() {
  //     data = jsonDecode(response.body);
  //   });

  //   print(data[0]["id"]);

  //   return "Success!";
  // }

  // @override
  // void initState() {
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data == [] ? 0 : data[0].length,
      itemBuilder: (BuildContext context, int index) {
        // String id = data[index]["id"].toString();
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: AppTheme.cardColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      data[0][index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        data[1][index],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // child: ListTile(
          //   textColor: Colors.white,
          //   leading: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //       "https://picsum.photos/200/300",
          //     ),
          //   ),
          //   title: Text(id),
          //   subtitle: Text(data[index]["title"]),
          // ),
        );
      },
    );
  }
}
