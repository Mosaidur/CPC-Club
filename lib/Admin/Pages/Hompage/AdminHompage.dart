import 'package:flutter/material.dart';

import '../Banner Photo Gallery/BannerPhotoGallery.dart';
import '../Committee And Alumni Info/CommitteeAndAlumniInformatio.dart';
import 'Widgets/DecoratedText.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  final String userName = "Asif";
  final String Membership_Title = "Admin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            children: [
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => UploadPhoto(),
                          //   ),
                          // );
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
                    // Stack(
                    //   alignment: AlignmentDirectional.topEnd,
                    //   children: [
                    //     IconButton(
                    //       icon:
                    //       Icon(Icons.notifications, color: Color(0xff03438C)),
                    //       onPressed: () {
                    //         // Add functionality for notifications
                    //       },
                    //     ),
                    //     Text(
                    //       "$number",
                    //       style: TextStyle(
                    //         color: Colors.red,
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ],
                    // ),

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
              DecoratedText(
                text:"Committee & Alumni Information",
                Widgets: CommitteeAndAlumniInformatio(),
              ),

              SizedBox(height: 10,),
              DecoratedText(
                text:"Bootcamp and FlagshipEvent",
                Widgets: CommitteeAndAlumniInformatio(),
              ),

              SizedBox(height: 10,),
              DecoratedText(
                text:"Banner, Photo Gallery & Semester Calendar",
                Widgets: BannerPhotoGallary(),
              ),
              SizedBox(height: 10,),
              DecoratedText(
                text:"Special Massege",
                Widgets: CommitteeAndAlumniInformatio(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
