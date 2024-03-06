import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';
import 'package:instagram_clone_app/view/SEARCHSCREEN/search_screen_app.dart';
import 'package:instagram_clone_app/view/homescreem/homescreen.dart';
import 'package:instagram_clone_app/view/login_screen.dart';
import 'package:instagram_clone_app/view/profilescreen/profile_screen.dart';



class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    SearchScreen(),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    ProfilePage()
   
    ,
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
                    builder: (context) => LoginScreen(),
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
                  backgroundColor:ColorConstants.primaryBlack,
                  radius: 15,
                  child: Center(
                    child: CircleAvatar(
                      radius: 14,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                  ),
                ),
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 15,
                ),
                label: ""),
          ],
        ),
      ),
    );
  }
}