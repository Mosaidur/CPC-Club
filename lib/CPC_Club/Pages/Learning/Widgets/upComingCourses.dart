import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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


          // Suggested Courses
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
                  Course_widget(
                    SugImagePath: SugImagePath ,
                    Sugtitle: Sugtitle,
                    SugcourseConductLocation: SugcourseConductLocation,
                    SugSessionStarting: SugSessionStarting,),
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

              //UnEnrolled Bootcamp
              Course_widget(
                SugImagePath: SugImagePath ,
                Sugtitle: Sugtitle,
                SugcourseConductLocation: SugcourseConductLocation,
                SugSessionStarting: SugSessionStarting,),

              //UnEnrolled Bootcamp
              Course_widget(
                SugImagePath: SugImagePath ,
                Sugtitle: Sugtitle,
                SugcourseConductLocation: SugcourseConductLocation,
                SugSessionStarting: SugSessionStarting,),


            ],
          ),


        ],


      ),
    );
  }
}
