import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminPopUpScreen extends StatelessWidget {
  final String? photoUrl;
  final String? name;
  final String? position;
  final String? id;
  final String? emailAddress;
  final String? phoneNumber;
  final String? description;
  final VoidCallback? onDoubleTap;
  final VoidCallback? Onlongpress;


  const AdminPopUpScreen({
    Key? key,
    this.photoUrl,
    this.name,
    this.position,
    this.id,
    this.emailAddress,
    this.phoneNumber,
    this.description, this.onDoubleTap, this.Onlongpress,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width/1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Upper Section
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (photoUrl==null)?Container():
                // Photo
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(photoUrl!),
                    ),
                  ),
                ),
                // Details

              ],
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                (name==null)?Container():
                Text(
                  name!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),

                (position==null)?Container():
                Text(
                  position!,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),

                (id==null)?Container():
                Text(
                  "ID: $id",
                  style: TextStyle(fontSize: 14),
                ),

                (emailAddress==null)?Container():
                Text(
                  "Email: $emailAddress",
                  style: TextStyle(fontSize: 14),
                ),

                (phoneNumber==null)?Container():
                Text(
                  "Phone: $phoneNumber",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          // Description
          (description==null)?Container():
          Text(
            "Description:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),

          (description==null)?Container():
          Text(
            description!,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
