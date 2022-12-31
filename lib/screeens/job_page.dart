import 'dart:convert';
import 'dart:math';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:minor_p/utils/theme.dart';
import 'dart:math';
import 'package:minor_p/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:minor_p/widgets/job_form_template.dart';

// class JobPage extends StatefulWidget {
//   const JobPage({super.key});

//   @override
//   State<JobPage> createState() => _JobPageState();
// }
class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                buttonMargin: EdgeInsets.symmetric(horizontal: 10),
                backgroundColor: Colors.blue,
                unselectedBackgroundColor: AppTheme.cardColor,
                // unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.white70),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    icon: Icon(Icons.event_available),
                    text: "Current Openings",
                  ),
                  Tab(
                    icon: Icon(Icons.post_add_outlined),
                    text: "Add Post",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    CurrentJobOpenings(),
                    SingleSectionForm()
                    // ListView.builder(
                    //   itemCount: 1,
                    //   itemBuilder: (context, index) => ListTile(),
                    // ),
                    // Center(
                    //   child: Icon(Icons.directions_car),
                    // ),
                    // Center(
                    //   child: Icon(Icons.directions_transit),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(
        current: 3,
      ),
    );
  }
}

class Test extends StatelessWidget {
  String url = "https://imsgec.herokuapp.com/jobOpenings";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: http.get(Uri.parse(url)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        List data = json.decode(snapshot.data!.body);
        print(data);
        // List categoriesnames = [];
        // List stores = [];
        // data.forEach((element) {
        //   categoriesnames.add(element["Category"]);
        //   stores.add(element['stores']);
        // });

        // return Text('see');
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            //      print(stores[index][index]['name']);
            return Text(data[index].company);
            // return CardItem(
            //   categoryname: categoriesnames[index],
            //   sotories: stores[index],
            // );
          },
        );
      },
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
          child: ListTile(
            textColor: Colors.white,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://picsum.photos/200/300",
              ),
            ),
            title: Text(id),
            subtitle: Text(data[index]["title"]),
          ),
        );
      },
    );
  }
}




// class _JobPageState extends State<JobPage> {
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SafeArea(
//       child: DefaultTabController(
//         length: 3,
//         child: Column(
//           children: <Widget>[
//             ButtonsTabBar(
//               backgroundColor: Colors.blue[600],
//               unselectedBackgroundColor: Colors.white,
//               labelStyle:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//               unselectedLabelStyle: TextStyle(
//                   color: Colors.blue[600], fontWeight: FontWeight.bold),
//               borderWidth: 1,
//               unselectedBorderColor: Colors.blue[600]!,
//               radius: 100,
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.open_in_full),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.close),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.add),
//                 )
//               ],
//             ),
//             Expanded(
//               child: TabBarView(children: [
//                 ListView(
//                   children: [
//                     ListTile(
//                       leading: CircleAvatar(
//                           child: Container(
//                         color: Colors.blue,
//                       )),
//                     ),
//                     ListTile(
//                       leading: CircleAvatar(
//                           child: Container(
//                         color: Colors.blue,
//                       )),
//                     ),
//                     ListTile(
//                       leading: CircleAvatar(
//                           child: Container(
//                         color: Colors.blue,
//                       )),
//                     ),
//                     ListTile(
//                       leading: CircleAvatar(
//                           child: Container(
//                         color: Colors.blue,
//                       )),
//                     )
//                   ],
//                 ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     ),
//     bottomNavigationBar: const BottomNavigator(current: 3),
//   );
// }





// class JobPage2 extends StatefulWidget {
//   const JobPage2({super.key});

//   @override
//   State<JobPage2> createState() => _JobPageState();
// }

// class _JobPageState extends State<JobPage2> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               PillButtonBar(
//                   selected: index,
//                   onChanged: (i) => setState(() => index = i),
//                   items: [
//                     PillButtonBarItem(text: Text('All')),
//                     PillButtonBarItem(text: Text('Mail')),
//                     PillButtonBarItem(text: Text('Peopl')),
//                     PillButtonBarItem(text: Text('Events')),
//                   ])
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigator(
//         current: 3,
//       ),
//       //bottomNavigationBar: BottomNavigation(current: 3),
//     );
//   }
// }
