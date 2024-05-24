import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedText extends StatelessWidget {
  final String text;
  final Widget Widgets;

  const DecoratedText({super.key, required this.text, required this.Widgets});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Widgets));
      },
      child: Center(
        child: Container(
          // width: MediaQuery.of(context).size.width/1.2,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.blueGrey, // Background color
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 5, // Blur radius
                offset: Offset(0, 3), // Offset for the shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white, // Text color
                fontSize: 18.0, // Text size
                fontWeight: FontWeight.bold, // Text weight
              ),
            ),
          ),
        ),
      ),
    );
  }
}
