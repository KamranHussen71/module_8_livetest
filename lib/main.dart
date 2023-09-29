 import 'package:flutter/material.dart';

 void main() {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: ImageFeed(),
     );
   }
 }

 class ImageFeed extends StatelessWidget {
   final List<String> imageUrls = [
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
     "https://e7.pngegg.com/pngimages/466/45/png-clipart-newspaper-newspapers-miscellaneous-newspapers-thumbnail.png",
   ];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('News Feed'),
       ),
       body: OrientationBuilder(
         builder: (context, orientation) {
           if (orientation == Orientation.portrait) {
             return ListView.builder(
               itemCount: imageUrls.length,
               itemBuilder: (context, index) {
                 return Card(
                   child: Container(
                     padding: EdgeInsets.all(8.0),
                     child: Image.network(
                       imageUrls[index],
                       width: 150,
                       height: 150,
                     ),
                   ),
                 );
               },
             );
           } else {
             return GridView.builder(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
               ),
               itemCount: imageUrls.length,
               itemBuilder: (context, index) {
                 return Card(
                   child: Container(
                     padding: EdgeInsets.all(8.0),
                     child: Image.network(
                       imageUrls[index],
                       width: 150,
                       height: 150,
                     ),
                   ),
                 );
               },
             );
           }
         },
       ),
     );
   }
 }
