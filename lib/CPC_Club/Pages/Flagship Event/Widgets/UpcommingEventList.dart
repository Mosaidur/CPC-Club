import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Learning/Bootcamp_description.dart';
import 'ProgramCard.dart';

class UpcommingEventList extends StatefulWidget {
  const UpcommingEventList({super.key});

  @override
  State<UpcommingEventList> createState() => _UpcommingEventListState();
}

class _UpcommingEventListState extends State<UpcommingEventList> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              ProgramCard(
                imageUrl: "https://drive.google.com/file/d/1XxqP76RbIJ1Afn7rXFrE_sy5UpIEiFBN/view?usp=drive_link",
                Eventname: "Take Off Spring 2024",
              ),
              ProgramCard(
                imageUrl: "https://drive.google.com/file/d/1XxqP76RbIJ1Afn7rXFrE_sy5UpIEiFBN/view?usp=drive_link",
                Eventname: "Take Off Spring 2024",
              ),
              ProgramCard(
                imageUrl: "https://drive.google.com/file/d/1-AA5cLYMCRcU0ox-tO4dRxaeVpENyl_x/view?usp=drive_link",
                Eventname: "Take Off Spring 2024",
              ),
            ],
          ),
        ),
    );
  }
}
