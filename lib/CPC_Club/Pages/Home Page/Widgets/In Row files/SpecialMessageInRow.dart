import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../SpecailMessage.dart';

class SpecialMessageInRow extends StatelessWidget {
  const SpecialMessageInRow({super.key});

  final List<Map<String, String>> specialMessageList = const [
    {
      'imageUrl': 'https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg',
      'specialMessage': '"Success is not final, failure is not fatal: It is the courage to continue that counts." - Winston Churchill',
      'name': 'Sheikh Rashed Hayder Noori',
      'position': 'Head of the Department of Computer Science and Engineering',
    },
    {
      'imageUrl': 'https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg',
      'specialMessage': '"Success is not final, failure is not fatal: It is the courage to continue that counts." - Winston Churchill',
      'name': 'Sheikh Rashed Hayder Noori',
      'position': 'Head of the Department of Computer Science and Engineering',
    },
    {
      'imageUrl': 'https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg',
      'specialMessage': '"Success is not final, failure is not fatal: It is the courage to continue that counts." - Winston Churchill',
      'name': 'Sheikh Rashed Hayder Noori',
      'position': 'Head of the Department of Computer Science and Engineering',
    },
    {
      'imageUrl': 'https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg',
      'specialMessage': '"Success is not final, failure is not fatal: It is the courage to continue that counts." - Winston Churchill',
      'name': 'Sheikh Rashed Hayder Noori',
      'position': 'Head of the Department of Computer Science and Engineering',
    },
    // Add more special messages as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Color(0xffcae6f1).withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: specialMessageList.map((message) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: SpecialMessage(
                  imageUrl: message['imageUrl']!,
                  specialMessage: message['specialMessage']!,
                  name: message['name']!,
                  position: message['position']!,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
