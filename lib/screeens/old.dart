import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class GetState with ChangeNotifier {
  int val = 0;

  GetState({this.val = 0});

  void setVal(int x) {
    val = x;
    notifyListeners();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Radio(
                    groupValue: "HomeState",
                    value: 0,
                    onChanged: (value) => setState(
                      () {
                        val = int.parse(value.toString());
                      },
                    ),
                  ),
                  Radio(
                    groupValue: "HomeState",
                    value: 1,
                    onChanged: (value) => setState(
                      () {
                        val = int.parse(value.toString());
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}




// child: ChangeNotifierProvider(
//             create: (context) => GetState(),
//             child: Column(
//               children: const [
//                 Radio(
//                   value: 0,
//                   groupValue: "HomeState",
//                   onChanged: (value) => provider.of<GetState>(context).va,
//                 ),
//               ],
//             ),
//           ),