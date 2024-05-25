import 'package:flutter/cupertino.dart';
import 'SemesterCalender.dart';

class SemeCalenderInRow extends StatelessWidget {
  const SemeCalenderInRow({super.key});

  final List<String> imageUrlList = const [
    'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',
    'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',
    'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',
    'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: imageUrlList.map((imageUrl) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SemeCalender(imageUrl: imageUrl),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
