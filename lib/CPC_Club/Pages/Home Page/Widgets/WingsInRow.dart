import 'package:flutter/cupertino.dart';

import 'Wings.dart';

class WingsInRow extends StatelessWidget {
  const WingsInRow({super.key});

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

              Wing(
                imageUrl: 'assets/icons/CPC_ACM.png',
                eventName: "ACM Task Force",
                onTap: () {  },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_Development.png',
                eventName: "Development Wing",
                onTap: () {  },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_Research.png',
                eventName: "Research & Journal",
                onTap: () {  },
              ),

              SizedBox(width: 15,),

              Wing(
                imageUrl: 'assets/icons/CPC_JCIC.png',
                eventName: "(JCIC) Job Career & Industry Collaboration",
                onTap: () {  },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
