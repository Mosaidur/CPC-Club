import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course_widget extends StatelessWidget {
  final String SugImagePath ;
  final String Sugtitle ;
  final String SugcourseConductLocation ;
  final String SugSessionStarting ;
  const Course_widget({super.key, required this.SugImagePath, required this.Sugtitle, required this.SugcourseConductLocation, required this.SugSessionStarting});

  @override

  // final String SugImagePath = "assets/Images2/Upcoming Course.jpg";
  // final String Sugtitle = "Ms Excel Course ";
  // final String SugcourseConductLocation = "Online";
  // final String SugSessionStarting = "9-22 January 2024 (6th session)";

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 25,right: 5 ,bottom: 10),
      child: InkWell(
        onTap: (){},
        child: Container(
          // width: double.maxFinite,
          width: MediaQuery.of(context).size.width/2.5,
          //height: 700,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue.shade50,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20,right: 20,bottom: 20),
            child: Column(
              children: [

                (SugImagePath.contains("assets/"))?
                Image.asset(
                  SugImagePath,
                  fit: BoxFit.fitWidth,
                  // height: 60.0,
                  width: MediaQuery.of(context).size.width/2.5,// Adjust as per your requirement
                ) :
                Image.network(
                  SugImagePath,
                  fit: BoxFit.fitWidth,
                  // height: 60.0,
                  width: MediaQuery.of(context).size.width/2.5,// Adjust as per your requirement
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // //Image
                    // Container(
                    //   width: MediaQuery.of(context).size.width/2.5,
                    //   child: Image.asset(SugImagePath, fit: BoxFit.fill,),
                    // ),

                    SizedBox(
                      height: 10,
                    ),

                    // title
                    Text(
                      Sugtitle,
                      softWrap: true,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10,),

                    // course Conduct Location
                    Row(
                      children: [

                        Icon(Icons.location_on,color: Color(0xff03438C),size: 12,),

                        SizedBox(width: 10,),

                        Container(
                          width: MediaQuery.of(context).size.width/4.1,
                          child: Text(
                            SugcourseConductLocation,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),


                      ],
                    ),

                    SizedBox(height: 10,),

                    // Session Starting Time
                    Row(
                      children: [

                        Icon(Icons.calendar_month,color: Color(0xff03438C),size: 12,),

                        SizedBox(width: 10,),

                        Container(
                          width: MediaQuery.of(context).size.width/4.1,
                          child: Text(
                            SugSessionStarting,
                            softWrap: true,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),


                      ],
                    ),


                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
