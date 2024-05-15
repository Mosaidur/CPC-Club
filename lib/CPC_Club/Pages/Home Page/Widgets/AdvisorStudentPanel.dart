import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Models/Profile/personal_info.dart';

import '../../My Job/My_jobsPage.dart';
import 'PanelDetails.dart';

class AdvisorStudentPanel extends StatelessWidget {
  const AdvisorStudentPanel({super.key});

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

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyJobPage() ));
                },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

              SizedBox(width: 15,),

              PanelDetails(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
                onTap: () {  },
                name: 'Shoriful Hassan Sourav',
                position: 'Creative Designer',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
