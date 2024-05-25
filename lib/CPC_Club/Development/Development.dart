import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Pages/Learning/Widgets/TextBoxWidget.dart';

import '../Pages/Committe/Widgets/ProfileCard.dart';
import '../Pages/Flagship Event/Widgets/ProgramCard.dart';

class Development extends StatefulWidget {
  const Development({Key? key}) : super(key: key);

  @override
  State<Development> createState() => _DevelopmentState();
}

class _DevelopmentState extends State<Development> {
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

  final List<Map<String, String>> eventList = [
    {
      'imageUrl': 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
      'Eventname': 'Take Off Spring 2024',
      'RegistrationEndDate': '2-15-2024',
      'RegistrationFee': '500 Taka',
      'ClassStartDate': '3-1-2024',
      'GrpURL': 'https://example.com/group',
      'Description': 'A great opportunity to start your journey in Spring 2024.',
      'PaymentMethods': 'Credit Card, Bank Transfer',
      'TermsAndcondition': 'Terms and conditions apply.',
    },
    // Add more event details as needed
  ];

  final List<Map<String, String>> BootcampList = [
    {
      'imageUrl': 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
      'Eventname': 'Take Off Spring 2024',
      'RegistrationEndDate': '2-15-2024',
      'RegistrationFee': '500 Taka',
      'ClassStartDate': '3-1-2024',
      'GrpURL': 'https://example.com/group',
      'Description': 'A great opportunity to start your journey in Spring 2024.',
      'PaymentMethods': 'Credit Card, Bank Transfer',
      'TermsAndcondition': 'Terms and conditions apply.',
    },
    // Add more event details as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Development Wings"),
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
            Column(
              children: eventList.map((event) {
                return ProgramCard(
                  imageUrl: event['imageUrl']!,
                  Eventname: event['Eventname']!,
                  RegistrationEndDate: event['RegistrationEndDate']!,
                  RegistrationFee: event['RegistrationFee']!,
                  ClassStartDate: event['ClassStartDate']!,
                  GrpURL: event['GrpURL']!,
                  Description: event['Description']!,
                  PaymentMethods: event['PaymentMethods']!,
                  TermsAndcondition: event['TermsAndcondition']!,
                );
              }).toList(),
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
            Column(
              children: BootcampList.map((event) {
                return ProgramCard(
                  imageUrl: event['imageUrl']!,
                  Eventname: event['Eventname']!,
                  RegistrationEndDate: event['RegistrationEndDate']!,
                  RegistrationFee: event['RegistrationFee']!,
                  ClassStartDate: event['ClassStartDate']!,
                  GrpURL: event['GrpURL']!,
                  Description: event['Description']!,
                  PaymentMethods: event['PaymentMethods']!,
                  TermsAndcondition: event['TermsAndcondition']!,
                );
              }).toList(),
            ),
            SizedBox(height: 15,),
            //About ACM Task Force
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
                      "About Development Wings",
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
