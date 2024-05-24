import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/Admin/Pages/Banner%20Photo%20Gallery/widgets/photoAndbanner.dart';

class ViewBannerAndPhoto extends StatefulWidget {
  const ViewBannerAndPhoto({super.key});

  @override
  State<ViewBannerAndPhoto> createState() => _ViewBannerAndPhotoState();
}

class _ViewBannerAndPhotoState extends State<ViewBannerAndPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhotosAndBanner(
              imageUrl: "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
              onTap: () {  },
            ),
          ],
        ),
      ),
    );
  }
}
