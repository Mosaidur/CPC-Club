import 'package:flutter/cupertino.dart';

class HiringCategoryInRow extends StatelessWidget {
  const HiringCategoryInRow({super.key});

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

              //Private Job logo and text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/icons_2/Private Job.png"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Private",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Job",
                      style: TextStyle(
                        color: Color(0xff03438C),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
