// import 'package:flutter/material.dart';


// // class _RestaurantItemsState extends State<RestaurantItems> {

// //   // Object getRestaurantMenu() {
// //   //   // var restaurantID = widget.restaurantID;
// //   //   //print(restaurantID);
// //   //   // var restaurantName = widget.restaurantName;
// //   //
// //   //   // var response = await http.get(
// //   //   //     Uri.https(baseURI, 'restaurants/1'));
// //   //   // // print(response.body);
// //   //   // var jsonData = jsonDecode(response.body);
// //   //   // var innerJson = jsonData.menu;
// //   //
// //   //   // List<ItemInfo> items = [];
// //   //   //
// //   //   // for (var i in menuList) {
// //   //   //   ItemInfo item = ItemInfo(
// //   //   //       i['id']!,
// //   //   //       "LOREM",
// //   //   //       333,
// //   //   //       "https://picsum.photos/500",
// //   //   //       "Dolor sit amet Dolor sit amet Dolor sit amet",
// //   //   //       "Indian",
// //   //   //       4
// //   //   //   );
// //   //   //   items.add(item);
// //   //   // }
// //   //   return items;
// //   //       // ItemInfo item =ItemInfo(
// //   //         // i['id'], i['name'], i['price'], i['image'], i['description'], i['category'], i['rating']
// //   //     // );
// //   //     // items.add(item);
// //   //   }

// //   List<ItemAmount> arr = [];


// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("MENU"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(25),
// //         child: ListView.builder(
// //           itemCount: menuList.length,
// //           itemBuilder: (BuildContext context, int index) {
// //             var currentItem = menuList[index];
// //             var currentItemQuantity = 0;
// //             var currentItemPrice = 0;
// //             return Padding(
// //               padding: const EdgeInsets.all(10),
// //               child: ListTile(
// //                 title: Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
// //                       child: AspectRatio(
// //                         aspectRatio: 2.5,
// //                         child: Container(
// //                           decoration: BoxDecoration(
// //                               image: DecorationImage(
// //                                 fit: BoxFit.fitWidth,
// //                                 alignment: FractionalOffset.topCenter,
// //                                 image: NetworkImage(currentItem['image']!),
// //                               )
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     Stack(children: [
// //                       Text(currentItem['name']!),
// //                       Align(
// //                         alignment: Alignment.centerRight,
// //                         child: Text(currentItem['rating']!),
// //                       )
// //                     ]
// //                     )
// //                   ],
// //                 ),
// //                 subtitle: Stack(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.all(5),
// //                       child: Text(currentItem['price']!),
// //                     ),
// //                     Align(
// //                       alignment: Alignment.topRight,
// //                       child: QuantityInput(
// //                           inputWidth: 30,
// //                           value: currentItemQuantity,
// //                           onChanged: (value) => setState(() => currentItemQuantity = currentItemQuantity + int.parse(value.replaceAll(',', ''))
// //                           )
// //                       ),
// //                     ),
// //                   ]
// //                 ),
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }








// class Mentors extends StatefulWidget {
//   const Mentors({super.key});

//   @override
//   State<Mentors> createState() => _MentorsState();
// }

// class _MentorsState extends State<Mentors> {
//   @override
//   // List<Student> arr = [];
//     List<Student> mentorList = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Mentors"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: ListView.builder(
//           itemCount: mentorList.length,
//           itemBuilder: (BuildContext context, int index) {
//             var currentMentor = mentorList[index];
//             int currentlyActive = 0;
            
//             return Padding(
//               padding: const EdgeInsets.all(10),
//               child: ListTile(
//                 title: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                       child: AspectRatio(
//                         aspectRatio: 2.5,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.fitWidth,
//                                 alignment: FractionalOffset.topCenter,
//                                 image: NetworkImage(currentMentor['image']!),
//                               )
//                           ),
//                         ),
//                       ),
//                     ),
//                     Stack(children: [
//                       Text(currentMentor['name']!),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: Text(currentMentor['']!),
//                       )
//                     ]
//                     )
//                   ],
//                 ),
//                 subtitle: Stack(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(5),
//                       child: Text(currentMentor['n']!),
//                     ),
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: QuantityInput(
//                           inputWidth: 30,
//                           value: currentItemQuantity,
//                           onChanged: (value) => setState(() => currentItemQuantity = currentItemQuantity + int.parse(value.replaceAll(',', ''))
//                           )
//                       ),
//                     ),
//                   ]
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
// }