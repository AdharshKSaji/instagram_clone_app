// import 'package:flutter/material.dart';
// import 'package:instagram_clone_app/core/constants/color_constants.dart';

// class SearchScreenGrid extends StatelessWidget {
//   const SearchScreenGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             Container(
//               height: MediaQuery.sizeOf(context).width*.33,
//               width: MediaQuery.sizeOf(context).width*.33,
//               decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/20377280/pexels-photo-20377280/free-photo-of-eine-alte-windmuhle.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
//             ),Container(
//               decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/20447470/pexels-photo-20447470/free-photo-of-kawah-ijen.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
//                height: MediaQuery.sizeOf(context).width*.33,
//               width: MediaQuery.sizeOf(context).width*.33,
//             )
//           ],
//         ),Expanded(child: Container(
//           height: MediaQuery.sizeOf(context).width*.50,
//               width: MediaQuery.sizeOf(context).width*.50,
//               decoration: BoxDecoration(
//                 image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/19992967/pexels-photo-19992967/free-photo-of-a-statue-of-a-hand-holding-a-dove-with-a-dove-on-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))
//               ),
          
    import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return 
         GridView.builder(gridDelegate:
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
         mainAxisSpacing: 8.0,
         crossAxisSpacing: 8.0), itemBuilder: (context, index) {
           return Image.network("https://images.pexels.com/photos/6966879/pexels-photo-6966879.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load=$index");
  }  );}  }

