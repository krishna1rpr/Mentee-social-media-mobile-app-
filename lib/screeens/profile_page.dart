import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double? pageHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://picsum.photos/200/300"),
                  radius: 100,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("KRISHNA DUBEY"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Card(
                        child: Text("data"),
                      ),
                      Card(
                        child: Text("data"),
                      )
                    ],
                  ),
                ),

                // ImageStream()
                // CachedNetworkImage(
                //   imageUrl:
                //       "https://store4.gofile.io/download/361b6d89-e4a7-4444-a725-a32bdbfefba6/WhatsApp%20Image%202021-11-03%20at%209.38.00%20PM.jpeg",
                //   height: 50,
                //   width: 100,
                //   fit: BoxFit.fill,
                // )

                // Just to DRY
                // Image.network(
                //   "http://ghchart.rshah.org/krishna1rpr",
                //   loadingBuilder: (context, child, loadingProgress) =>
                //       (loadingProgress == null)
                //           ? child
                //           : CircularProgressIndicator(),
                //   errorBuilder: (context, error, stackTrace) =>
                //       Text("https://picsum.photos/200/300"),
                // ),
                // Image.network("http://ghchart.rshah.org/krishna1rpr")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
