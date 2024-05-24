import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/ProgramCard.dart';
import 'Widgets/UpcommingEventList.dart';

class FlagshipEventList extends StatefulWidget {
  final String? appbarname;
  const FlagshipEventList({super.key, this.appbarname});

  @override
  State<FlagshipEventList> createState() => _FlagshipEventListState();
}

class _FlagshipEventListState extends State<FlagshipEventList> {
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
          title: Text(widget.appbarname!),
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
            UpcommingEventList(),
            UpcommingEventList(),
            UpcommingEventList(),
          ],
        ),
      ),
    );;
  }
}
