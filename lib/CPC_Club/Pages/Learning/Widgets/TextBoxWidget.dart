import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextBoxWidget extends StatelessWidget {
  final String text;
  final String? title;
  const TextBoxWidget({super.key, required this.text, this.title, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20,right: 20,bottom: 20),
      child: Container(
        width: double.maxFinite,
        // height: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20,right: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              title==null? Container():
              // Profile Summary
              Text(
                title!,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 15,),


              Text(
                text,
                textAlign: TextAlign.justify,
                // softWrap: true,
                // maxLines: 15,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 15,),


            ],

          ),
        ),
      ),
    );
  }
}
