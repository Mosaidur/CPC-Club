import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  final String? imageUrl;
  final VoidCallback? onTap;
  const Photos({super.key, this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
    );
  }
}
