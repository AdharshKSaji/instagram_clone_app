

import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';


class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({
    super.key,
    this.isLive = false,
    required this.proPic,
    required this.userName,
  });

  final String proPic;
  final String userName;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // #1
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient:
                        LinearGradient(end: Alignment.bottomRight, colors: [
                      ColorConstants.normalRed,
                      ColorConstants.normalBlue,
                      ColorConstants.normalGreen,
                    ])),
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: ColorConstants.normalGrey,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(proPic),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: isLive == true
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  ColorConstants.normalGreen,
                                  ColorConstants.normalRed,
                                  ColorConstants.normalBlue
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 4, color: ColorConstants.primarWhite)),
                        child: Center(
                          child: Text(
                            "Live",
                            style: TextStyle(
                                color: ColorConstants.primarWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : SizedBox(),
              )
            ],
          ),
          SizedBox(height: 3),
          // #2
          Text(userName)
        ],
      ),
    );
  }
}