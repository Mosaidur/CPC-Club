import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Select_LogInScreen.dart';
import '../../Authentiction Pages/Sign_In.dart';
import '../../CustomSnackbar.dart';
import '../Profile/Account Settings/upload_photo.dart';
import 'Widgets/AdvisorStudentPanel.dart';
import 'Widgets/BootcampInRow.dart';
import 'Widgets/FlagshipEvent.dart';
import 'Widgets/FlagshipEventRow.dart';
import 'Widgets/HiringCategoryInRow.dart';
import 'Widgets/HomePageJobList.dart';
import 'Widgets/ImageSlider.dart';
import 'Widgets/Main_feature.dart';
import '../Browse Jobs/BrowseJobsListPage.dart';
import 'Widgets/ManuDrawer.dart';
import 'Widgets/WingsInRow.dart';

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
      // backgroundColor: Colors.red,
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

            SizedBox(height: 10,),

            //Banner
            ImageSlider(imageUrls: [
              'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
              'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/439311604_840508148116795_6784777571886456827_n.jpg?stp=dst-jpg_s960x960&_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHcAMyBkyEF5z-Uf-eT0qyOAByz4GEuUTQAHLPgYS5RNA5fOf4_j7sCUTfL10NeGGewjmxtiy3GTh-a3Gd5mnLo&_nc_ohc=csj1_eZvJKcQ7kNvgEE9gHK&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCndz47m22ixmub_S4p_NmI8TNHvBFKUugNeZWYWf-pIw&oe=6646C462',
              'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/439024853_840314728136137_488621242892721572_n.jpg?stp=dst-jpg_s960x960&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGIX_8uyt0-ic_8Ywbm1YbIZB6JNNZIKMBkHok01kgowNwg5i695h_3fX6Jc74KSXqCyLswIqW738TaTBG7q5Ro&_nc_ohc=4UiIGUY-3qoQ7kNvgElEgsn&_nc_ht=scontent.fdac135-1.fna&oh=00_AYDBKuoIW5iIrOdXUIP2ja7B6pjx3oSEWg6ZwrYZxMl3Jw&oe=6646D3D2',
              'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/434777734_833529195481357_5672840485704813044_n.jpg?stp=dst-jpg_s600x600&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEqt3-fk51mNlFQ9hLsK2KU2nScwVTrEsvadJzBVOsSyzJ3_HxbnNRQzfGk2NcuM8splJWqlys1jsqt7HskHa58&_nc_ohc=0Ps3BA_1BusQ7kNvgHNENz6&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyHecm4bPbM6jSrGbcVpj51vV-kvjixnD7Vk2rDtm8rw&oe=6646D75A',
              'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/425749611_833529345481342_5655843720103690548_n.jpg?stp=dst-jpg_s600x600&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFwDERys6nKWPQf_VY6jBwHc9SmFOo3wvVz1KYU6jfC9Rkv8fpFMqacSfangXlnn-pbkiCwgfpQiHcSf2Z77HFk&_nc_ohc=qw34ymXphlUQ7kNvgGhvEtl&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCdop4RyEniN0l1aL-ZbpFYYjAmPWi8frzONmV8Clcdxg&oe=6646E4C9',

            ],),

            //Wings
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Wings",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            WingsInRow(),

            //FlagShip Event
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Flagship Event",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            FlagshipEventRow(),

            //Bootcamp
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Bootcamp",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            BootcampInRow(),


            //Advisor & Student Panel
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Advisor & Student Panel",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            AdvisorStudentPanel(),

            //Special Message
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Special Message",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //Photo Gallery
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Photo Gallery",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //Semester Calender
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Semester Calender",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          //fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      endDrawer: ManuDrawer(),
    );
  }
}
