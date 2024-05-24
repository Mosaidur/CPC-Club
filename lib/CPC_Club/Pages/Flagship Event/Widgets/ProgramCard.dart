import 'package:flutter/material.dart';

import '../../Home Page/Widget 2/popupScreen.dart';
import '../../Learning/Bootcamp_description.dart';

class ProgramCard extends StatelessWidget {
  final String? Eventname;
  final String? RegistrationEndDate;
  final String? ClassStartDate;
  final String? RegistrationFee;
  final String? GrpURL;
  final String? imageUrl;
  final String? Description;
  final String? PaymentMethods;
  final String? TermsAndcondition;
  final VoidCallback? onTap;

  ProgramCard({
    this.Eventname,
    this.RegistrationEndDate,
    this.ClassStartDate,
    this.RegistrationFee,
    this.GrpURL,
    this.imageUrl,
    this.Description,
    this.PaymentMethods,
    this.TermsAndcondition,
    this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BootcampDescription())),
      child: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children:[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child:
                 imageUrl != null
                    ? Image.network(
                  imageUrl!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                )
                    : Container(),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Eventname!,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    (RegistrationEndDate==null) ? Container():
                    Text(
                      "Registration End Date: \n${RegistrationEndDate!}",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    (ClassStartDate==null) ? Container():
                    Text(
                      "Class Start Date: \n${ClassStartDate!}",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5.0),
                    (RegistrationFee==null) ? Container():
                    Text(
                      RegistrationFee!,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5.0),
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