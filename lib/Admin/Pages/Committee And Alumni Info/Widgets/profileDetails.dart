import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AdminPopUpScreen.dart';

class CommitteProfileDetails extends StatelessWidget {
  final String name;
  final String? position;
  final String? phoneNumber;
  final String? emailAddress;
  final String? year;
  final String? imageUrl;
  final String? id;
  final String? description;

  const CommitteProfileDetails(
       {super.key, required this.name, this.position, this.phoneNumber, this.emailAddress, this.year, this.imageUrl, this.id, this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              actions: [
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
              content: AdminPopUpScreen(
                photoUrl: imageUrl,
                name: name,
                position: position,
                id: id,
                emailAddress: emailAddress,
                phoneNumber: phoneNumber,
                description: description,
              ),
            );
          },
        );
      },
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child:
                imageUrl==null?Container():
                Image.network(
                  imageUrl!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    name==null ? Container():
                    Text(
                      name!,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),

                    position==null ? Container():
                    Text(
                      position!,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    phoneNumber==null ? Container():
                    Text(
                      'Phone: $phoneNumber',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    emailAddress==null ? Container():
                    Text(
                      'Email: $emailAddress',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    year==null ? Container():
                    Text(
                      'Committee Year: $year',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(left: 40,right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            // onTap: ,
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 20.0), // Space between the icons
                          GestureDetector(
                            // onTap: ,
                            child: Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
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
