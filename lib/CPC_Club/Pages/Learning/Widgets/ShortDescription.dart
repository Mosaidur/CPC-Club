import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../loading_page.dart';

class ShortDescription extends StatelessWidget {
  final String courseTitle;
  final String? registrationEndDate;
  final String? ClassStartDate;
  final String? SocialMediaGroupLink;
  final String? RegistrationFee;

  const ShortDescription({super.key,required this.courseTitle, this.registrationEndDate, this.ClassStartDate, this.SocialMediaGroupLink, this.RegistrationFee, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20,right: 20,bottom: 20),
      child: Container(
        width: double.maxFinite,
        // height: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20,right: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Profile Summary
              Text(
                courseTitle!,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 15,),

              Text(
                "Registration End Date: ${registrationEndDate!}",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),

              ),

              SizedBox(height: 15,),

              Text(
                "Class Start Date: ${ClassStartDate!}",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),

              ),

              SizedBox(height: 15,),

              Text(
                "Registration Fee: ${RegistrationFee!}",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),

              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: () async {

                  final url = Uri.parse(SocialMediaGroupLink!);
                  LoadingPage();
                  if (await launchUrl(
                    url,
                    mode: LaunchMode.inAppWebView,
                  )) {
                    throw Exception('Could not launch $SocialMediaGroupLink');
                  }

                },
                onDoubleTap: (){
                  Clipboard.setData(ClipboardData(text: SocialMediaGroupLink!));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Link copied to clipboard'),
                    ),
                  );
                },
                onLongPress: (){
                  Clipboard.setData(ClipboardData(text: SocialMediaGroupLink!));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Link copied to clipboard'),
                    ),
                  );
                },
                child: Text(
                  "Registration Fee: ${SocialMediaGroupLink!}",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),

                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
