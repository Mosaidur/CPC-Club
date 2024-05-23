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

              SemeCalender(imageUrl: 'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',),

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',),

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',),

              SizedBox(width: 10,),

              SemeCalender(imageUrl: 'https://drive.google.com/uc?export=download&id=1VQRmhmTbJOJpH22KnD4_2Ih-FThXeKBH',),

            ],
          ),
        ),
      ),
    );
  }
}
