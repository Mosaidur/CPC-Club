import 'package:flutter/cupertino.dart';

import 'Photos.dart';

class PhotosInColumn extends StatelessWidget {
  const PhotosInColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // color: Color(0xffcae6f1).withOpacity(0.4),
        // height: MediaQuery.of(context).size.height ,
        // height: 140 ,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height:  10,),

              Photos(
                imageUrl: "https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH",
                  // https://drive.google.com/file/d/1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH/view?usp=sharing
                onTap: () {  },),

              SizedBox(height:  10,),

              Photos(
                imageUrl: "https://img.freepik.com/free-photo/face-young-selfie-sweater-hipster_1157-4036.jpg",
                onTap: () {  },),


              SizedBox(height:  10,),

              Photos(
                imageUrl: "https://www.shutterstock.com/image-vector/opposite-adjective-words-long-pencil-260nw-1891758880.jpg",
                onTap: () {  },),


              SizedBox(height:  10,),

              Photos(
                imageUrl: "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1502323777036-f29e3972d82f",
                onTap: () {  },),

            ],
          ),
        ),
      ),
    );;
  }
}
