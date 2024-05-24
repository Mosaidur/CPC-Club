import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Alumni Cell/AlumniCellList.dart';
import '../../../Alumni Cell/widgets/AllAlumniInformation.dart';
import '../../Committe/Widgets/allCommitteeInformation.dart';
import '../../Committe/committeDetailsPage.dart';
import '../../Event/event_page.dart';
import '../../Groups/AllGroupPage.dart';

class OthersFeatures extends StatefulWidget {
  const OthersFeatures({super.key});

  @override
  State<OthersFeatures> createState() => _OthersFeaturesState();
}

class _OthersFeaturesState extends State<OthersFeatures> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height ,
      // height: 120 ,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                //Committee Information
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CommiteeDetailsPage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/Images2/Committee.png"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Committee \nInformation",
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " ",
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Alumni Cell
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AlumniCellList()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/Images2/Alumni.png"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Alumni Cell\n",
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " ",
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
