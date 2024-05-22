import 'package:flutter/cupertino.dart';

import 'FlagshipEvent.dart';

class FlagshipEventRow extends StatelessWidget {
  const FlagshipEventRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // color: Color(0xffcae6f1).withOpacity(0.4),
        // height: MediaQuery.of(context).size.height ,
        // height: 140 ,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'Take Off',
                 onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'UTA',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'Type Trek face Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'Googling Contest',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                eventName: 'Take Off',
                onTap: () {  }, ),

            ],
          ),
        ),
      ),
    );
  }
}
