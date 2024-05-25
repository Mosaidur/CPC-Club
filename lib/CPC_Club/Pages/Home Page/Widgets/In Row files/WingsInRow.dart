import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Development/Development.dart';
import 'package:jobskeers/CPC_Club/JCIC/jcic.dart';

import '../../../../ACM/Acm.dart';
import '../../../../Research & Journal/ResearchWings.dart';
import '../Wings.dart';

class WingsInRow extends StatelessWidget {
  const WingsInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // height: MediaQuery.of(context).size.height ,
        // height: 140 ,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(width: 10,),

              Wing(
                imageUrl: 'assets/icons/CPC_ACM.png',
                eventName: "ACM Task Force",
                onTap: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ACMTskForce()));
                },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_Development.png',
                eventName: "Development Wing",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Development()));
                },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_Research.png',
                eventName: "Research & Journal",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ResearchAndJournal()));
                },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_JCIC.png',
                eventName: "(JCIC) Job Career & Industry Collaboration",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> JCIC()));
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}