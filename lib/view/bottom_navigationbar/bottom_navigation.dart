import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';
import 'package:instagram_clone_app/core/constants/image_constants.dart';
import 'package:instagram_clone_app/view/SEARCHSCREEN/search_screen_app.dart';
import 'package:instagram_clone_app/view/fovorite/favouritescreen.dart';
import 'package:instagram_clone_app/view/homescreem/homescreen.dart';
import 'package:instagram_clone_app/view/profilescreen/postscreen.dart';
import 'package:instagram_clone_app/view/profilescreen/profile_screen.dart';
import 'package:instagram_clone_app/view/widgets/custom_notification_card.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    Search(),
    CustomNotificationCard(),
    NotificationScreen(),
    Profile(),
    
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedItemColor: ColorConstants.primaryBlack,
          onTap: (value) {
            if (value != 2) {
              selectedIndex = value;
              setState(() {});
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePostScreen(),
                  ));
            }
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: [
            const BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: ""),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),

            // center bottm nav  button
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()),
                    child: const Icon(Icons.add)),
                label: ""),
            const BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border_outlined),
                label: ""),
            const BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: ColorConstants.primaryBlack,
                  radius: 15,
                  child: Center(
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage(ImageConstants.proPic),
                    ),
                  ),
                ),
                icon: CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.proPic),
                  radius: 15,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}