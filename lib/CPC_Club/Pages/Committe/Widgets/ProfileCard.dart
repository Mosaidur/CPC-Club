import 'package:flutter/material.dart';

import '../../Home Page/Widget 2/popupScreen.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String phoneNumber;
  final String emailAddress;
  final String year;
  final String imageUrl;
  final String id;
  final String description;

  ProfileCard({
    required this.name,
    required this.position,
    required this.phoneNumber,
    required this.emailAddress,
    required this.year,
    required this.imageUrl,
    required this.id,
    required this.description,
  });



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
              content: ProfileContainer(
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
                child: Image.network(
                  imageUrl,
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
                    Text(
                      position,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Phone: $phoneNumber',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Email: $emailAddress',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Committee Year: $year',
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
