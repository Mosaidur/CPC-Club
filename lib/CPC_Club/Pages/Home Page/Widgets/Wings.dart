import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wing extends StatelessWidget {
  final String imageUrl;
  final String? eventName;
  final VoidCallback onTap;
  const Wing({super.key, required this.imageUrl, this.eventName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xffcae6f1).withOpacity(0.2),
          //     // color: Colors.transparent.withOpacity(0.1),
          //     spreadRadius: 2,
          //     blurRadius: 5,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.fitWidth,
                // height: 60.0,
                width: 80,// Adjust as per your requirement
              ),
              if (eventName != null)
                Container(
                  padding: EdgeInsets.all(8.0),
                  // decoration: BoxDecoration(
                  //   color: Colors.transparent.withOpacity(0.1),
                  //   borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(10.0),
                  //     bottomRight: Radius.circular(10.0),
                  //   ),
                  // ),
                  child: SizedBox(
                    width: 80,
                    child: Text(
                      eventName!,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: Color(0xff0c3560),
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
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
