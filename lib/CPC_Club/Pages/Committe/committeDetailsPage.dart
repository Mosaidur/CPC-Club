import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/allCommitteeInformation.dart';

class CommiteeDetailsPage extends StatefulWidget {
  const CommiteeDetailsPage({super.key});

  @override
  State<CommiteeDetailsPage> createState() => _CommiteeDetailsPageState();
}

class _CommiteeDetailsPageState extends State<CommiteeDetailsPage> {
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
          title: Text("Committe Details"),
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
            AllCommitteeInformation(),
            AllCommitteeInformation(),
            AllCommitteeInformation(),
          ],
        ),
      ),
    );
  }
}
