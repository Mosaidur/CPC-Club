import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobskeers/CPC_Club/Alumni%20Cell/widgets/AllAlumniInformation.dart';

// import 'Widgets/allCommitteeInformation.dart';

class AlumniCellList extends StatefulWidget {
  const AlumniCellList({super.key});

  @override
  State<AlumniCellList> createState() => _AlumniCellListState();
}

class _AlumniCellListState extends State<AlumniCellList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
          title: Text("Alumni Cell"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: '2024'),
              Tab(text: '2023'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllAlumniInformation(),
            AllAlumniInformation(),
            AllAlumniInformation(),
          ],
        ),
      ),
    );
  }
}
