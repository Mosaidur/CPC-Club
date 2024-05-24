import 'package:flutter/material.dart';
import 'package:jobskeers/Admin/Pages/Banner%20Photo%20Gallery/widgets/AddBannerAndPhoto.dart';
import 'package:jobskeers/Admin/Pages/Banner%20Photo%20Gallery/widgets/ViewBannerAndPhoto.dart';

class BannerPhotoGallary extends StatefulWidget {
  const BannerPhotoGallary({super.key});

  @override
  State<BannerPhotoGallary> createState() => _BannerPhotoGallaryState();
}

class _BannerPhotoGallaryState extends State<BannerPhotoGallary> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ) ,
          // leadingWidth: 0,
          automaticallyImplyLeading: false,
          title: Text("Banner, PhotoGallary and Semester Calender"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'View info'),
              Tab(text: 'Add info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ViewBannerAndPhoto(),
            AddBannerAndPhoto(),
          ],
        ),
      ),
    );
  }
}
