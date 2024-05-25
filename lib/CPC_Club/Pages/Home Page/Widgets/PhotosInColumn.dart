import 'package:flutter/cupertino.dart';
import 'Photos.dart';

class PhotosInColumn extends StatelessWidget {
  const PhotosInColumn({super.key});

  final List<Map<String, dynamic>> photosList = const [
    {
      'imageUrl': 'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',
      // 'onTap': () {},
    },
    {
      'imageUrl': 'https://img.freepik.com/free-photo/face-young-selfie-sweater-hipster_1157-4036.jpg',
      // 'onTap': () {},
    },
    {
      'imageUrl': 'https://www.shutterstock.com/image-vector/opposite-adjective-words-long-pencil-260nw-1891758880.jpg',
      // 'onTap': () {},
    },
    {
      'imageUrl': 'https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1502323777036-f29e3972d82f',
      // 'onTap': () {},
    },
    // Add more photo details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: photosList.map((photo) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Photos(
                  imageUrl: photo['imageUrl']!,
                  // onTap: photo['onTap']!,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
