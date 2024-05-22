import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/ShortDescription.dart';
import 'Widgets/TextBoxWidget.dart';

class BootcampDescription extends StatefulWidget {
  const BootcampDescription({super.key});

  @override
  State<BootcampDescription> createState() => _BootcampDescriptionState();
}

class _BootcampDescriptionState extends State<BootcampDescription> {
  @override
  Widget build(BuildContext context) {

    final String profile_summary= " ";
    final String imageUrl= "https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/436380757_2171482936550506_3314979265962237858_n.jpg?stp=cp6_dst-jpg_p526x296&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=SIDI6UB8E_UQ7kNvgE0SkU5&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCZHbW3ltxjGf6zQ0lRZm8m7MBr1Mi20mf-5SuezElHqw&oe=66535948";
    final String appBar= "Coruse Title ";

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(appBar),
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

            (imageUrl.contains("assets/"))?
            Image.asset(
              imageUrl,
              fit: BoxFit.fitWidth,
              // height: 60.0,
              width: MediaQuery.of(context).size.width,// Adjust as per your requirement
            ) :
            Image.network(
              imageUrl,
              fit: BoxFit.fitWidth,
              // height: 60.0,
              width: MediaQuery.of(context).size.width,// Adjust as per your requirement
            ),

            ShortDescription(
              courseTitle: 'Take Off Programming Contest, spring 2024',
              ClassStartDate: "",
              registrationEndDate: "",
              RegistrationFee: "",
              SocialMediaGroupLink: "https://www.dreamstime.com/people-person-digital-device-using-concept-close-up-studio-phot-photo-portrait-pretty-cute-attractive-lovely-lady-holding-smart-image127364744",
            ),

            TextBoxWidget(
              title: "asfkh\nsalfhasl\nkfsah",
              text: '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
            ),

            TextBoxWidget(
              title: "asfkh\nsalfhasl\nkfsah",
              text: '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
            ),

            TextBoxWidget(
              title: "asfkh\nsalfhasl\nkfsah",
              text: '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
            )

          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ElevatedButton(
          onPressed: () {  },

          child: Text("Registration Now"),),
      ),
    );
  }
}
