import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';

class UserPost extends StatefulWidget {
  const UserPost({super.key});

  @override
  State<UserPost> createState() => _UserPostState();
}
List<String>PostImageList=[
      "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&w=600"

    ];
    int currentpage=1;

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    
    return Container(color: ColorConstants.primarWhite,
    child: Column(mainAxisSize: MainAxisSize.min,
    children: [
      ListTile(
        leading: CircleAvatar(radius: 20,backgroundImage:
         NetworkImage("https://images.pexels.com/photos/15577772/pexels-photo-15577772/free-photo-of-sliding-down-the-slope-of-a-snow-covered-hill.jpeg?auto=compress&cs=tinysrgb&w=400"),),
        title: Row(
          children:[ Text( "Adhrash",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10
          ),Icon(Icons.verified,size: 15,color: ColorConstants.primaryBlue,)]
        ),subtitle: Row(children:[ Text("some under the sky")]),

        trailing: Icon(Icons.more_horiz),

      ),Stack(
        children:[ SizedBox(height: 375,child: PageView.builder
        (pageSnapping: false,itemCount: PostImageList.length,
        itemBuilder:(context, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(PostImageList[index]))
          ),
        ), ),),
        Positioned(height: 0,right: 14,top: 14,
          child: Container(child: Text("1/3",style: TextStyle(color:ColorConstants.primarWhite),),
            padding: EdgeInsets.symmetric(horizontal: 8,
            vertical: 6),
            decoration:BoxDecoration(
              color: ColorConstants.primaryBlack.withOpacity(.4)
              ,borderRadius: BorderRadius.circular(13),  
            ) ,
          ),
        ),
    ])
    ],),
    
    
    
    
    );
  }
}