import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Pages/Learning/Widgets/TextBoxWidget.dart';

import '../Pages/Committe/Widgets/ProfileCard.dart';

class ACMTskForce extends StatefulWidget {
  const ACMTskForce({Key? key}) : super(key: key);

  @override
  State<ACMTskForce> createState() => _ACMTskForceState();
}

class _ACMTskForceState extends State<ACMTskForce> {
  final List<Map<String, String>> committeeList = [
    {
      'name': 'Asif',
      'position': 'Treasurer',
      'phoneNumber': '01568219379',
      'emailAddress': 'emailAddress',
      'year': '2024',
      'imageUrl':
      'https://drive.google.com/file/d/1YpMMHpCiRLhX-B1bYsUVemict24e32H2/view?usp=drive_link',
      'id': '212-15-4194',
      'description': 'I am Asif',
    },
    // Add more committee details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: committeeList.map((member) {
                return ProfileCard(
                  name: member['name']!,
                  position: member['position']!,
                  phoneNumber: member['phoneNumber']!,
                  emailAddress: member['emailAddress']!,
                  year: member['year']!,
                  imageUrl: member['imageUrl']!,
                  id: member['id']!,
                  description: member['description']!,
                );
              }).toList(),
            ),
            SizedBox(height: 15,),
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
            SizedBox(height: 15,),
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

            SizedBox(height: 15,),
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
                      "About ACM Task Force",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    //
                    // InkWell(
                    //   onTap: (){
                    //     // Navigator.push(context, MaterialPageRoute(builder: (context)=> BrowseJobslistPage()));
                    //   },
                    //   child: Text(
                    //     "See All",
                    //     style: TextStyle(
                    //       color: Color(0xff03438C),
                    //       //fontWeight: FontWeight.bold,
                    //       fontSize: 13,
                    //     ),
                    //   ),
                    // ),

                  ],
                ),
              ),
            ),
            TextBoxWidget(
              text: '\n\n\n\n\n\n\n\n\n\n\n',
            )

          ]
        ),
      ),
    );
  }
}
