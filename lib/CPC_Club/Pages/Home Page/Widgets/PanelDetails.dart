import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PanelDetails extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String position;
  final VoidCallback onTap;
  const PanelDetails({super.key, required this.imageUrl, required this.onTap, required this.name, required this.position});

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
              Image.network(
                imageUrl,
                fit: BoxFit.scaleDown,
                // height: 60.0,
                width: MediaQuery.of(context).size.width/3,// Adjust as per your requirement
              ),
              if (name != null)
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        name!,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: Color(0xff0c3560),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        position!,
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: Color(0xff0c3560),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
