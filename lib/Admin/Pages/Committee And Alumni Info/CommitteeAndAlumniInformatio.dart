import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/AddInfo.dart';
import 'Widgets/ViewInfo.dart';

class CommitteeAndAlumniInformatio extends StatefulWidget {
  const CommitteeAndAlumniInformatio({super.key});

  @override
  State<CommitteeAndAlumniInformatio> createState() => _CommitteeAndAlumniInformatioState();
}

class _CommitteeAndAlumniInformatioState extends State<CommitteeAndAlumniInformatio> {
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
          title: Text("Committee And Alumni Information"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'View info'),
              Tab(text: 'Add info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ViewCommitteeAlumniInfo(),
            AddCommitteeAmulniInfo(),
          ],
        ),
      ),
    );
  }
}
