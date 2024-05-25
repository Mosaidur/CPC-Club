import 'package:flutter/material.dart';
import 'package:jobskeers/Admin/Pages/Banner%20Photo%20Gallery/widgets/AddBannerAndPhoto.dart';
import 'package:jobskeers/Admin/Pages/Banner%20Photo%20Gallery/widgets/ViewBannerAndPhoto.dart';
import 'package:jobskeers/Admin/Pages/Bootcamp%20and%20flagshipevent/widgets/AddBootcampAndFlagshipEvent.dart';
import 'package:jobskeers/Admin/Pages/Bootcamp%20and%20flagshipevent/widgets/ViewBootcampAndFlagshipEvent.dart';

class BootcampAndFlagshipEvent extends StatefulWidget {
  const BootcampAndFlagshipEvent({super.key});

  @override
  State<BootcampAndFlagshipEvent> createState() => _BootcampAndFlagshipEventState();
}

class _BootcampAndFlagshipEventState extends State<BootcampAndFlagshipEvent> {
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
          title: Text("Bootcamp And Flagship Event"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'View info'),
              Tab(text: 'Add info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ViewBootcampAndFlagshipEvent(),
            AddBootcampAndFlagshipEvent(),
          ],
        ),
      ),
    );
  }
}
