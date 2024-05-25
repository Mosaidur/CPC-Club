import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Banner Photo Gallery/widgets/photoAndbanner.dart';

class ViewBootcampAndFlagshipEvent extends StatefulWidget {
  const ViewBootcampAndFlagshipEvent({super.key});

  @override
  State<ViewBootcampAndFlagshipEvent> createState() => _ViewBootcampAndFlagshipEventState();
}

class _ViewBootcampAndFlagshipEventState extends State<ViewBootcampAndFlagshipEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
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
