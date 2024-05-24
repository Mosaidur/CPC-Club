import 'package:flutter/cupertino.dart';
import 'package:jobskeers/CPC_Club/Pages/Committe/Widgets/ProfileCard.dart';

class AllCommitteeInformation extends StatefulWidget {
  const AllCommitteeInformation({super.key});

  @override
  State<AllCommitteeInformation> createState() => _AllCommitteeInformationState();
}

class _AllCommitteeInformationState extends State<AllCommitteeInformation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            ProfileCard(
                name: "Asif",
                position: "Tresurer",
                phoneNumber: "01568219379",
                emailAddress: "emailAddress",
                year: "2024",
                imageUrl: "https://drive.google.com/file/d/1YpMMHpCiRLhX-B1bYsUVemict24e32H2/view?usp=drive_link",
                id: '212-15-4194',
                description: 'Iam ASif',
            ),
          ],
        ),
      ),
    );
  }
}
