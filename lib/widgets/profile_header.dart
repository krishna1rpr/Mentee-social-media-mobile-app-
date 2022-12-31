import 'package:flutter/material.dart';

import 'package:minor_p/utils/theme.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String title;
  final String desc;

  const ProfileHeaderWidget({Key? key, required this.title, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: AppTheme.profileHeaderStyle(context),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          desc,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
