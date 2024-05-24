import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alumniDetails.dart';


class AllAlumniInformation extends StatefulWidget {
  const AllAlumniInformation({super.key});

  @override
  State<AllAlumniInformation> createState() => _AllAlumniInformationState();
}

class _AllAlumniInformationState extends State<AllAlumniInformation> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            AlumniDetails(
                name: 'John Doe',
                position: 'Software Engineer',
                phoneNumber: '+1 555-1234',
                emailAddress: 'john.doe@example.com',
                batch: '2022',
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/442410852_861815492652727_8085566726195537866_n.jpg?stp=dst-jpg_p526x395&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGqGfWBch41sEsRFr7D4nXu5zm74WZ-KXTnObvhZn4pdEt_l1UdSGCwDakjuTmQKLPgIG_dW5xB3SHRH18NJshH&_nc_ohc=euejKs2WY4UQ7kNvgFzsCIo&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAYRcFzDETWZivkTwWk0FzLsj4MlNW-pMXAW0minFlyuQ&oe=6655AA4E',
                Id: '12345',
                description: 'A passionate software engineer with experience in Flutter and Dart.'
            ),
            AlumniDetails(
                name: 'John Doe',
                position: 'Software Engineer',
                phoneNumber: '+1 555-1234',
                emailAddress: 'john.doe@example.com',
                batch: '2022',
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/442410852_861815492652727_8085566726195537866_n.jpg?stp=dst-jpg_p526x395&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGqGfWBch41sEsRFr7D4nXu5zm74WZ-KXTnObvhZn4pdEt_l1UdSGCwDakjuTmQKLPgIG_dW5xB3SHRH18NJshH&_nc_ohc=euejKs2WY4UQ7kNvgFzsCIo&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAYRcFzDETWZivkTwWk0FzLsj4MlNW-pMXAW0minFlyuQ&oe=6655AA4E',
                Id: '12345',
                description: 'A passionate software engineer with experience in Flutter and Dart.'
            ),
            AlumniDetails(
                name: 'John Doe',
                position: 'Software Engineer',
                phoneNumber: '+1 555-1234',
                emailAddress: 'john.doe@example.com',
                batch: '2022',
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/442410852_861815492652727_8085566726195537866_n.jpg?stp=dst-jpg_p526x395&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGqGfWBch41sEsRFr7D4nXu5zm74WZ-KXTnObvhZn4pdEt_l1UdSGCwDakjuTmQKLPgIG_dW5xB3SHRH18NJshH&_nc_ohc=euejKs2WY4UQ7kNvgFzsCIo&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAYRcFzDETWZivkTwWk0FzLsj4MlNW-pMXAW0minFlyuQ&oe=6655AA4E',
                Id: '12345',
                description: 'A passionate software engineer with experience in Flutter and Dart.'
            ),
          ],
        ),
      ),
    );
  }
}
