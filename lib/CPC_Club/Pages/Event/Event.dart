import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventData extends StatelessWidget {
  final String imageUrl;
  final String? eventName;
  final VoidCallback onTap;
  final String? location;
  final String? date;

  const EventData({
    Key? key,
    required this.imageUrl,
    this.eventName,
    required this.onTap,
    this.location,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/1,
        // height: MediaQuery.of(context).size.width/1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffcae6f1).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image
              (imageUrl.contains("assets/"))
                  ? Image.asset(
                imageUrl,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              )
                  : Image.network(
                imageUrl,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),

              SizedBox(height: 10),

              // Date
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  date ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Event Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  eventName ?? '',
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Color(0xff0c3560),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 10),

              // Event Location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  location ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),

              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
