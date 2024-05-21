import 'package:flutter/cupertino.dart';

import 'SemesterCalender.dart';

class SemeCalenderInRow extends StatelessWidget {
  const SemeCalenderInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // height: MediaQuery.of(context).size.height ,
        // height: 140 ,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://thumbs.dreamstime.com/b/long-road-2232078.jpg',),

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://thumbs.dreamstime.com/b/long-road-2232078.jpg',),

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://thumbs.dreamstime.com/b/long-road-2232078.jpg',),

            ],
          ),
        ),
      ),
    );
  }
}
