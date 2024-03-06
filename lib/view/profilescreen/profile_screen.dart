import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';
import 'package:instagram_clone_app/core/constants/image_constants.dart';
import 'package:instagram_clone_app/globalwidget/globalwidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: Icon(Icons.lock),title: Text
    ("AdharshSaji",
    style: TextStyle(color: ColorConstants.primaryBlack,
    fontWeight: FontWeight.bold,),),
    actions: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.alternate_email,),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.add_box,),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.menu,),
    )
    ],),
    body: Column(
      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(radius: 50,backgroundImage: AssetImage(ImageConstants.proPic),)
          ,Column(
            children: [Text("100",style: TextStyle(fontWeight: FontWeight.bold))
              ,Text("posts",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          )
          ,Column(
            children: [Text("1000",style: TextStyle(fontWeight: FontWeight.bold))
              ,Text("follower",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [Text("1200",style: TextStyle(fontWeight: FontWeight.bold))
              ,Text("following",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          )
        ],
      ),Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Column(
          children: [
            Text("adharshsaji__"),
            SizedBox(height: 5,),
            Text(overflow:TextOverflow.ellipsis ,maxLines: 3,
            "asdfghjkl.,mnbvcdfghjkl,mnbvfghjklzxcvbnm"),

          ],
          
        ),
      ]),CustomButton(buttonColor:ColorConstants.normalGrey, havVBorder: true, text: "edit profile")
      ],
      
    )
    
    ,);
  }
}