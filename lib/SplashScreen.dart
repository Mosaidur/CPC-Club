import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:jobskeers/Job_Seeker/Authentiction%20Pages/Sign_In.dart';
// import 'package:jobskeers/Job_Seeker/JobSeekerMainPage.dart';
// import 'package:jobskeers/Job_Seeker/Pages/Home%20Page/CPC_HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CPC_Club/JobSeekerMainPage.dart';
import 'Select_JobSekkerAndEmplpoyer.dart';
import 'Select_LogInScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  // getting the value of shared preferances
  // late SharedPreferences sprefs;
  // String? userID;


  // _loadPreferences() async {
  //   sprefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     userID = sprefs.getString("USERID");
  //   });
  // }

  startTimer ()async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userID = prefs.getString("USERID");

    (userID != null) ?
    Timer (Duration(seconds: 3),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => JobSeekerMainpage() ),
            )
    ) :
    Timer (Duration(seconds: 3),
            () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => SelectLoginScreen() ),
        )
    );
  }

  // startTimer() async {
  //
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final String? userID = prefs.getString("USERID");
  //
  //   Future.delayed(Duration(seconds: 3), () {
  //     if (userID != null || userID!.isNotEmpty) {
  //       print("UserID: $userID");
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => JobSeekerMainpage()),
  //       );
  //     } else {
  //       print("UserID 2: $userID");
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => JobSeekerSigninScreen()),
  //       );
  //     }
  //   });
  // }


  @override

  void initState (){
    super.initState();

    // _loadPreferences();
    startTimer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xffEFF6FE),
     //    backgroundColor: Colors.white,
      body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    // "assets/images/job-seeking.gif",
                       "assets/icons/CPC_Logo.png",
                  width: 200,
                  ),
                  SizedBox(height: 15,),
                  Text(
                    textAlign: TextAlign.center,
                    "Daffodil International University Computer and Programming Club",
                    style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      // color: darktheme? Colors.white: Colors.teal.shade400,
                    ),
                  ),
                ],
              ),
            ),
          )
      ),

      bottomNavigationBar: Container(
        width: double.maxFinite,
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/CSE_department.png",height: 90,),
                SizedBox(width: 50,),
                Image.asset("assets/images/Daffodil-International-University-DIU-logo.png",height: 50,)
              ],
            ),
            // Image.asset("assets/images/Daffodil-International-University-DIU-logo.png",height: 50,)
          ],
        ),
      ),
    );
  }
}


