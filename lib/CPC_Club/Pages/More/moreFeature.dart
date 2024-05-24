import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Pages/More/widgets/FagshipEvent.dart';
import 'package:jobskeers/CPC_Club/Pages/More/widgets/AboutUS.dart';
import 'package:jobskeers/CPC_Club/Pages/More/widgets/OtherFrature.dart';
import 'package:jobskeers/CPC_Club/Pages/More/widgets/Wings.dart';
// import 'package:jobskeers/Job_Seeker/Pages/More/widgets/FagshipEvent.dart';
// import 'package:jobskeers/Job_Seeker/Pages/More/widgets/AboutUS.dart';
// import 'package:jobskeers/Job_Seeker/Pages/More/widgets/OtherFrature.dart';
// import 'package:jobskeers/Job_Seeker/Pages/More/widgets/Wings.dart';

import '../Home Page/Widgets/Hiring_category.dart';
import '../Home Page/Widgets/Main_feature.dart';

class MoreFeature extends StatefulWidget {
  const MoreFeature({super.key});

  @override
  State<MoreFeature> createState() => _MoreFeatureState();
}

class _MoreFeatureState extends State<MoreFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(leadingWidth: 0,automaticallyImplyLeading: false,title: Center(child: Text("More Feature"))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Wings
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Text(
                "Wings",
                style: TextStyle(
                  color: Color(0xff03438C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            WingsList(),
            Divider(color: Colors.grey,thickness: 1,),

            //Flagship Event
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Text(
                "Flagship Event",
                style: TextStyle(
                  color: Color(0xff03438C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            FlegshipEventList(),
            Divider(color: Colors.grey,thickness: 1,),

            //Other Features
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Text(
                "Other Features",
                style: TextStyle(
                  color: Color(0xff03438C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            OthersFeatures(),
            Divider(color: Colors.grey,thickness: 1,),

            //About Us
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Text(
                "About Us",
                style: TextStyle(
                  color: Color(0xff03438C),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            AboutUsCategory(),


          ],
        ),
      ),
    );
  }
}
