import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialMessage extends StatelessWidget {
  final String imageUrl;
  final String? name;
  final VoidCallback? onTap;
  final String? specialMessage;
  final String? position;

  const SpecialMessage({
    Key? key,
    required this.imageUrl,
    this.name,
    this.onTap,
    this.specialMessage,
    this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffcae6f1).withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    SizedBox(width: 5,),
                    if (specialMessage != null)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            specialMessage!,
                            maxLines: 6,
                            style: TextStyle(
                              color: Color(0xff0c3560),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 10,),
                if (name != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
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
                  ),
                SizedBox(height: 5,),
                if (position != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      position!,
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
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}