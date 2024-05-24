import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotosAndBanner extends StatelessWidget {
  final String? imageUrl;
  final VoidCallback onTap;
  const PhotosAndBanner({super.key, this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Column(
                children: [

                  (imageUrl == null)? Container():
                  Image.network(
                    imageUrl!,
                    fit: BoxFit.fitWidth,
                    // height: 50.0, // Adjust as per your requirement
                  ),
                ],
              ),
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
    );
  }
}
