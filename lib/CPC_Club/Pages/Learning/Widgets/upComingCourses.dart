import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Home Page/Widgets/Bootcamp.dart';
import '../Bootcamp_description.dart';
import 'Course_widget.dart';

class UpComingCourse extends StatelessWidget {
  UpComingCourse({super.key});

  final List<Map<String, dynamic>> enrolledCourses = [
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Enrolled Course 1',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Enrolled Course 2',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    // Add more enrolled courses here
  ];

  final List<Map<String, dynamic>> unenrolledCourses = [
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Unenrolled Course 1',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Unenrolled CourseUnenrolled Course 2',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Unenrolled Course 1',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/441059255_853553206812289_8190857365242765565_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGZS3TY6bpeACIDWSieV8gY-1d10G6nHpb7V3XQbqcelsewsjZyfpZb9G2tPiycOGJWfXALXT3ZgrOvdWHF30gS&_nc_ohc=bV5vpxlDEmMQ7kNvgGeqElI&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDsxCDlQV-S4RBI3nfsedUgdcCa-CzANzqbK10Eduf8Aw&oe=6657328A',
      'eventName': 'Unenrolled Course 2',
      'registrationEndDate': '10-05-2024',
      'classStartDate': '01-06-2024',
    },
    // Add more unenrolled courses here
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Enrolled Bootcamp
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 10, bottom: 10),
            child: Text(
              "Enrolled Bootcamp",
              style: TextStyle(
                color: Color(0xff03438C),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: enrolledCourses.map((course) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Stack(
                    children: [
                      Bootcamp(
                        imageUrl: course['imageUrl'],
                        eventName: course['eventName'],
                        registrationEndDate: course['registrationEndDate'],
                        ClassStartDate: course['classStartDate'],
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BootcampDescription()));
                        },
                      ),
                      Positioned(
                        top: 12,
                        right: -5,
                        child: Transform.rotate(
                          angle: 45 * 3.1415927 / 180,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            color: Colors.green.withOpacity(0.5),
                            child: Text(
                              'Enrolled',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          // All Courses
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10.0, left: 20, right: 10, bottom: 10),
            child: Text(
              "Unenrolled Bootcamp",
              style: TextStyle(
                color: Color(0xff03438C),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: unenrolledCourses.map((course) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 24, // Half of screen width with some padding
                  child: Bootcamp(
                    imageUrl: course['imageUrl'],
                    eventName: course['eventName'],
                    registrationEndDate: course['registrationEndDate'],
                    ClassStartDate: course['classStartDate'],
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BootcampDescription()));
                    },
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
