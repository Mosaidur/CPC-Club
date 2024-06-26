import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:jobskeers/Job_Seeker/Pages/Home%20Page/CPC_HomePage.dart';

import 'Pages/ComingSoon.dart';
import 'Pages/Event/event_page.dart';
import 'Pages/Home Page/CPC_HomePage.dart';
import 'Pages/Learning/LearningPage.dart';
import 'Pages/More/moreFeature.dart';
import 'Pages/My Job/My_jobsPage.dart';
import 'Pages/Profile/JobSeekerProfile.dart';



class JobSeekerMainpage extends StatefulWidget {

   JobSeekerMainpage({Key? key});

  @override
  State<JobSeekerMainpage> createState() => _JobSeekerMainpageState();
}

class _JobSeekerMainpageState extends State<JobSeekerMainpage> {
  // late List pages;


    final List pages = [
      JobSeekerHomePage(),
      EventPage(),
      MoreFeature(),
      LearningPage(),
      JobSeekerProfilePage(),
    ];

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    // Adjust the breakpoint as needed
          return Scaffold(

            body: pages[selectedIndex],

            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              iconSize: 20,
              selectedItemColor: Color(0xff03438C),
              unselectedItemColor: Colors.grey,
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.event),label: "Event"),
                BottomNavigationBarItem(icon: Icon(Icons.apps),label: "More"),
                BottomNavigationBarItem(icon: Icon(Icons.work),label: "Bootcamp"),
                BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
              ],
            ),

          );

  }
}

