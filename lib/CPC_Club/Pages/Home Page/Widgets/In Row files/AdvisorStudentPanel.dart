import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Models/Profile/personal_info.dart';
import '../../../My Job/My_jobsPage.dart';
import '../PanelDetails.dart';

class AdvisorStudentPanel extends StatelessWidget {
  const AdvisorStudentPanel({super.key});

  final List<Map<String, dynamic>> panelDetailsList = const [
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
      'name': 'Shoriful Hassan Sourav',
      'position': 'Creative Designer',
    },
    {
      'imageUrl': 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/435922991_833531892147754_5478653977254701744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEBspFJtq_jD9uPpiM48eA63CDncmGuukTcIOdyYa66RB9JIhncqHGdhcZ-HUwaNN2jZfoMU_Z8grFzozObU9Qx&_nc_ohc=gJcfUWM8QfIQ7kNvgH1e0rq&_nc_ht=scontent.fdac135-1.fna&oh=00_AYD19dJrhIlxzgvetDRcpiKBsM1CDRBtjUJldSPP1QSNlA&oe=66478467',
      'name': 'Shoriful Hassan Sourav',
      'position': 'Creative Designer',
    },
    // Add more panel details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Color(0xffcae6f1).withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: panelDetailsList.map((panelDetails) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: PanelDetails(
                  imageUrl: panelDetails['imageUrl']!,
                  onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyJobPage() ));
                  },
                  name: panelDetails['name']!,
                  position: panelDetails['position']!,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
