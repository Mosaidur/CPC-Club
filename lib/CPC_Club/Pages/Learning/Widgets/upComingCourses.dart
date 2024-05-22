import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Home Page/Widgets/Bootcamp.dart';
import '../Bootcamp_description.dart';
import 'Course_widget.dart';

class UpComingCourse extends StatelessWidget {
  UpComingCourse({super.key});

  final String imagePath = "assets/Images2/Upcoming Course.jpg";
  final String title = "Ms Excel Course ";
  final String courseConductLocation = "Online";
  final String SessionStarting = "9-22 January 2024 (6th session)";


  final String SugImagePath = "assets/Images2/Upcoming Course.jpg";
  final String Sugtitle = "Ms Excel Course ";
  final String SugcourseConductLocation = "Online";
  final String SugSessionStarting = "9-22 January 2024 (6th session)";



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


          // Enrolled Bootcamp
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10.0, left: 20,right: 10,bottom: 10),
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
              children: [
                for(int i=0; i<10;i++)

                  //Enrolled Bootcamp
                  Stack(
                    children: [
                      Bootcamp(
                      imageUrl: 'https://uploads.toph.co/Nb1jDSdfZA3Eksj_iouiyPHorFPfCCp1Jhh-ibpCllo/resize:fill:1400:500:0/gravity:sm/czM6Ly90b3BoLXBsYXRmb3JtLXVwbG9hZHMvaW1hZ2VzLzE2Njg2NzEwMjM4OTkxNDkxODQtNjY0NjUyOTQ1MDU5MzcwNDEzMC1kZmM3Y2RiNWU4ZjBmMTAyOTE2MTBkZTA1M2Q5OGQwZi5qcGc',
                      eventName: "Take Off Programming Contset Spring 2024",
                      // registrationEndDate: "10-05-2024",
                      // ClassStartDate: "01-06-2024",
                      onTap: () {  },),

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
                    ]
                  )
              ],
            ),
          ),



          // All Courses
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10.0, left: 20,right: 10,bottom: 10),
            child: Text(
              "Unenrolled Bootcamp",
              style: TextStyle(
                color: Color(0xff03438C),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          for(int i=0; i<10;i++)
          Row(
            children: [

              SizedBox(width: 15,),

              //UnEnrolled Bootcamp
              Bootcamp(
                imageUrl: 'https://uploads.toph.co/Nb1jDSdfZA3Eksj_iouiyPHorFPfCCp1Jhh-ibpCllo/resize:fill:1400:500:0/gravity:sm/czM6Ly90b3BoLXBsYXRmb3JtLXVwbG9hZHMvaW1hZ2VzLzE2Njg2NzEwMjM4OTkxNDkxODQtNjY0NjUyOTQ1MDU5MzcwNDEzMC1kZmM3Y2RiNWU4ZjBmMTAyOTE2MTBkZTA1M2Q5OGQwZi5qcGc',
                eventName: "Take Off Programming Contset Spring 2024",
                registrationEndDate: "10-05-2024",
                ClassStartDate: "01-06-2024",
                onTap: () {  },),

              SizedBox(width: 15,),

              //UnEnrolled Bootcamp
              Bootcamp(
                imageUrl: 'https://uploads.toph.co/Nb1jDSdfZA3Eksj_iouiyPHorFPfCCp1Jhh-ibpCllo/resize:fill:1400:500:0/gravity:sm/czM6Ly90b3BoLXBsYXRmb3JtLXVwbG9hZHMvaW1hZ2VzLzE2Njg2NzEwMjM4OTkxNDkxODQtNjY0NjUyOTQ1MDU5MzcwNDEzMC1kZmM3Y2RiNWU4ZjBmMTAyOTE2MTBkZTA1M2Q5OGQwZi5qcGc',
                eventName: "Take Off Programming Contset Spring 2024",
                registrationEndDate: "10-05-2024",
                ClassStartDate: "01-06-2024",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BootcampDescription() ));
                },),

            ],
          ),

          SizedBox(height: 20,),


        ],


      ),
    );
  }
}
