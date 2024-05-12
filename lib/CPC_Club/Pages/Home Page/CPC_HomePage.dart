import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Select_LogInScreen.dart';
import '../../Authentiction Pages/Sign_In.dart';
import '../../CustomSnackbar.dart';
import '../Profile/Account Settings/upload_photo.dart';
import 'Widgets/HiringCategoryInRow.dart';
import 'Widgets/HomePageJobList.dart';
import 'Widgets/Main_feature.dart';
import '../Browse Jobs/BrowseJobsListPage.dart';
import 'Widgets/ManuDrawer.dart';

class JobSeekerHomePage extends StatefulWidget {
  JobSeekerHomePage({Key? key}) : super(key: key);

  @override
  State<JobSeekerHomePage> createState() => _JobSeekerHomePageState();
}

class _JobSeekerHomePageState extends State<JobSeekerHomePage> {
  String number = "99";
  String userName = "Mosaidur Rahman Asif";
  String Membership_Title = "General Member";
  String deadlineTomorrow = "150";

  // Getting the value of shared preferences
  late SharedPreferences sprefs;
  String? userID;

  @override
  void initState() {
    super.initState();
    _loadUserIDPreferences();
  }

  _loadUserIDPreferences() async {
    sprefs = await SharedPreferences.getInstance();
    setState(() {
      userID = sprefs.getString("USERID");
    });
  }

  _removeUserIDPreferences() async {
    sprefs = await SharedPreferences.getInstance();
    sprefs.remove("USERID");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Header of the HomePage
            Container(
              width: double.infinity,
              height: 150,
              color: Color(0xffcae6f1),
              child: Row(
                children: [
                  // Profile Picture
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadPhoto(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/icons/man_logo.png"),
                      ),
                    ),
                  ),

                  // User Information
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5,top:60,bottom:0 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userName,
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              color: Color(0xff03438C),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.school, color: Color(0xff03438C), size: 15),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  Membership_Title,
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: Color(0xff03438C),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Add similar rows for other user information
                        ],
                      ),
                    ),
                  ),

                  // Search Bar
                  IconButton(
                    icon: Icon(Icons.search,
                        color: Color(0xff03438C), size: 30),
                    onPressed: () {
                      // Add functionality for search
                    },
                  ),

                  // Notification Icon
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      IconButton(
                        icon:
                            Icon(Icons.notifications, color: Color(0xff03438C)),
                        onPressed: () {
                          // Add functionality for notifications
                        },
                      ),
                      Text(
                        "$number",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  // Menu Bar
                  Builder(
                    builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.menu, color: Color(0xff03438C)),
                        onPressed: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            // Other widgets of the home page can be added here
          ],
        ),
      ),
      endDrawer: ManuDrawer(),
    );
  }
}
