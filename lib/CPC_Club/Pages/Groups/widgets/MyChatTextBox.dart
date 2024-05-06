import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyChatTextBox extends StatelessWidget {
  // final Color chatboxColor;
  final String Massage;
  // final Color Textcolor;
  final bool sender ;
  // final String SenderName;
  final String TimeStamp;
  // final String SenderImage;
  MyChatTextBox({super.key,
    // required this.chatboxColor,
    required this.Massage,
    // required this.Textcolor,
    required this.sender,
    // required this.SenderName,
    required this.TimeStamp,
    // required this.SenderImage
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisAlignment: (sender != true) ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [

          (sender != true) ? SizedBox(
            width: MediaQuery.of(context).size.width / 8.5,
          ) :SizedBox(),


          Column(
          mainAxisAlignment: (sender == true) ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [

              Container(
                // width: MediaQuery.of(context).size.width/1.3,
                alignment: (sender == true) ? AlignmentDirectional.centerStart: AlignmentDirectional.centerEnd,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: (sender != true) ? Radius.circular(20): Radius.circular(0),
                    bottomRight: (sender == true) ? Radius.circular(20): Radius.circular(0),
                  ),
                  color: (sender == true) ? Colors.blueGrey : Colors.blue ,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: (sender!=true)  ? CrossAxisAlignment.end : CrossAxisAlignment.start ,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          Massage,
                          textAlign:(sender!=true)  ? TextAlign.end : TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8, left: 15, right: 10),
                child: Text(
                  TimeStamp,
                  textAlign: (sender !=true)  ? TextAlign.end : TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),

          (sender == true) ? SizedBox(
            width: MediaQuery.of(context).size.width / 8.5,
          ) :SizedBox(),

        ],
      ),
    );
  }
}
