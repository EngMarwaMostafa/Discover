// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class CustomImage extends StatelessWidget {
//  CustomImage({super.key,required this.width,required this.height,required this.image});
//   double width;
//   double height;
//  String image;
//    @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child:Image(image:NetworkImage,
//           errorBuilder: (ctx, object, trace) => const Icon(
//             Icons.error_outline,
//             color: Colors.red,
//           ),
//           loadingBuilder: (BuildContext context, Widget child,
//               ImageChunkEvent? loadingProgress) {
//             if (loadingProgress == null) return child;
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }),
//     );
//   }
// }
