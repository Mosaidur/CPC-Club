import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Flagship Event/FlagshipEventList.dart';

class FlegshipEventList extends StatefulWidget {
  const FlegshipEventList({super.key});

  @override
  State<FlegshipEventList> createState() => _FlegshipEventList();
}

class _FlegshipEventList extends State<FlegshipEventList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height ,
      // height: 120 ,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                //Take Off
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FlagshipEventList(appbarname: "Take Off",)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/Images2/CPC_take-off.png"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Take Off",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " ",
                          style: TextStyle(
                            color: Color(0xff03438C),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                //Unlock the Algorithom
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/Images2/CPC_unlock the algorithm.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Unlock The ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Algorithom",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                //Datathon
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/Images2/CPC_Datathon.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Datathon",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                //Type Trek
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/Images2/CPC_typetreck.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Type Trek",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12
                          ,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                //Googling Contest
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/Images2/CPC_googling.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Googling ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Contest",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),


                //ICPC
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.blueGrey,
                        child: Image.asset("assets/Images2/CPC_ICPC.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ICPC",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                //NGPC
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/Images2/CPC_NGPC.png"),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "NGPC",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " ",
                        style: TextStyle(
                          color: Color(0xff03438C),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),

        ],
      ),
    );
  }
}
