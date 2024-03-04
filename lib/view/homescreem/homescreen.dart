import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone_app/core/constants/image_constants.dart';
import 'package:instagram_clone_app/view/dummydb.dart';
import 'package:instagram_clone_app/view/widgets/custompost.dart';
import 'package:instagram_clone_app/view/widgets/customstory.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.camera_alt_outlined),
          title: Image.asset(
            ImageConstants.instaLogoPng,
            scale: 1.5,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //#1 custom story section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      DummyDb.storyList.length,
                      (index) =>CustomStoryAvatar(
                            proPic: DummyDb.storyList[index]["proPic"],
                            userName: DummyDb.storyList[index]["userName"],
                            isLive: DummyDb.storyList[index]["isLive"],
                          )),
                ),
              ),

              //#2 custom posts section

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DummyDb.homePostsList.length,
                itemBuilder: (context, index) => CustomPostsContainer(
                  userName: DummyDb.homePostsList[index]["userName"].toString(),
                  location: DummyDb.homePostsList[index]["location"].toString(),
                  postImagesList: DummyDb.homePostsList[index]["posts"],
                  proPic: DummyDb.homePostsList[index]["proPic"].toString(),
                  caption: DummyDb.homePostsList[index]["caption"].toString(),
                  isLiked: DummyDb.homePostsList[index]["liked"],
                ),
              )
            ],
          ),
        ));
  }
}