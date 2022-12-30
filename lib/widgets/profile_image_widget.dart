import 'package:flutter/material.dart';
//import 'package:to_do_app_profile_template/utils/constants.dart';

class ProfileImageWidget extends StatelessWidget {
  // Image link (Online)
  final String image = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
