import 'package:flutter/material.dart';
import 'package:minor_p/widgets/bottom_navigator.dart';
import 'package:minor_p/widgets/profile_card.dart';
//import 'package:minor_p/widgets/profile_add.dart';
import './../../data/student.dart';
import 'package:minor_p/widgets/profile_header.dart';
import 'package:minor_p/widgets/profile_image_widget.dart';
import 'package:minor_p/utils/theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        elevation: 0.0,

        //App Bar Back Button
        leading: const SizedBox(
          width: 0,
          height: 0,
        ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.keyboard_backspace, color: Colors.white),
        // ),

        actions: <Widget>[
          // Profile Image Widget
          ProfileImageWidget(),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        color: AppTheme.primary,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header Widget
            ProfileHeaderWidget(
              title: students[0][0],
              desc: students[0][1],
            ),
            const SizedBox(
              height: 35.0,
            ),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: <Widget>[
                  ProfileCardWidget(
                    title: 'Projects',
                    desc: students[0][2],
                    icon: Icons.work_history_rounded,
                    iconColor: AppTheme.iconColors[0],
                  ),
                  ProfileCardWidget(
                    title: 'DSA',
                    desc: students[0][3],
                    icon: Icons.event_note,
                    iconColor: AppTheme.iconColors[1],
                  ),
                  ProfileCardWidget(
                    title: 'Interships',
                    desc: students[0][4],
                    icon: Icons.calendar_today,
                    iconColor: AppTheme.iconColors[2],
                  ),
                  ProfileCardWidget(
                    title: 'Acheviments',
                    desc: students[0][5],
                    icon: Icons.local_atm,
                    iconColor: AppTheme.iconColors[3],
                  ),
                  ProfileCardWidget(
                    title: '',
                    desc: 'Add photos',
                    icon: Icons.camera,
                    iconColor: AppTheme.iconColors[4],
                  ),

                  // Add New To do Card
                  //ProfileAddCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(current: 4),
    );
  }
}
