

import 'package:flutter/material.dart';
import 'package:instagram_clone_app/core/constants/color_constants.dart';
import 'package:instagram_clone_app/view/SEARCHSCREEN/search_screen_result.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 30,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                  ),
                  isDense: true,
                  fillColor: ColorConstants.primaryBlack.withOpacity(.1),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.select_all_sharp))
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: ColorConstants.primaryBlack.withOpacity(.1)))),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorConstants.normalGrey.withOpacity(0.18)
                          ),borderRadius: BorderRadius.circular(6)
                        ),child: const Row(
                          children: [
                            Icon(Icons.tv),SizedBox(
                              width: 5.5,
                            ),Text("IGTV")
                          ],
                        ),
                          
                        ),
                      )),
            ),
          ),
        ),
      ),
    ),body: SearchGrid());
  }
}