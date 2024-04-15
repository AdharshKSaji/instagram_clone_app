import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';
import 'package:instagram_clone_app/view/fovorite/tabs.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: TabBar(
                indicatorWeight: 1,
                unselectedLabelColor:
                    ColorConstants.primaryBlack.withOpacity(.4),
                labelColor: ColorConstants.primaryBlack,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.primaryBlack,
                tabs: [
                  Text(
                    'Following',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('You',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ]),
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.black,
          ),
          Container(
            child: NotificationTab(),
          )
        ]),
      ),
    );
  }
}