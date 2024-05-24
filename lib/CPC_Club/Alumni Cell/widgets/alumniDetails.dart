import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Pages/Home Page/Widget 2/popupScreen.dart';

class AlumniDetails extends StatelessWidget {
  final String name;
  final String? position;
  final String? phoneNumber;
  final String? emailAddress;
  final String? batch;
  final String? imageUrl;
  final String? Id;
  final String? description;
  const AlumniDetails({super.key,
    required this.name,
    this.position,
    this.phoneNumber,
    this.emailAddress,
    this.batch,
    this.imageUrl,
    this.Id,
    this.description,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
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
              content: ProfileContainer(
                photoUrl: imageUrl!,
                name: name,
                position: position!,
                id: Id!,
                emailAddress: emailAddress!,
                phoneNumber: phoneNumber!,
                description: description!,
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
            children:[

              (imageUrl==null)?Container():
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
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
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),

                    (position==null)?Container():
                    Text(
                      position!,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    (phoneNumber==null)?Container():
                    Text(
                      'Phone: $phoneNumber',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    (emailAddress==null)?Container():
                    Text(
                      'Email: $emailAddress',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),

                    (batch==null)?Container():
                    Text(
                      'Batch: $batch',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
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
