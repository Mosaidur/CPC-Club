import 'package:flutter/cupertino.dart';

class SemeCalender extends StatelessWidget {
  final VoidCallback? onTap;
  final String? imgID;
  final String imageUrl;
  const SemeCalender({super.key, this.onTap, required this.imageUrl, this.imgID});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width / 3,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
