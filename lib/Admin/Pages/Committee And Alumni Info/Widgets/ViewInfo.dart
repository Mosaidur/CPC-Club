import 'package:flutter/cupertino.dart';
import 'package:jobskeers/Admin/Pages/Committee%20And%20Alumni%20Info/Widgets/profileDetails.dart';

import '../../../../CPC_Club/Pages/Committe/Widgets/ProfileCard.dart';

class ViewCommitteeAlumniInfo extends StatefulWidget {
  const ViewCommitteeAlumniInfo({super.key});

  @override
  State<ViewCommitteeAlumniInfo> createState() => _ViewCommitteeAlumniInfoState();
}

class _ViewCommitteeAlumniInfoState extends State<ViewCommitteeAlumniInfo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
        children: [
          for (int i = 0; i < 10; i++)
          CommitteProfileDetails(
            name: '',
            imageUrl: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
            position: "",
            phoneNumber: "",
            emailAddress: "",
          ),
        ],
      ),
    );
  }
}
