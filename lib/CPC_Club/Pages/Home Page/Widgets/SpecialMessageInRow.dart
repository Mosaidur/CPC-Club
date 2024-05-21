import 'package:flutter/cupertino.dart';
import 'package:jobskeers/CPC_Club/Pages/Home%20Page/Widgets/SpecailMessage.dart';

class SpecialMessageInRow extends StatelessWidget {
  const SpecialMessageInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Color(0xffcae6f1).withOpacity(0.4),
        // height: MediaQuery.of(context).size.height ,
        // height: 140 ,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(width: 10,),

              SpecialMessage(
                imageUrl: "https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg",
                specialMessage: '"asfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfa"',
                  name: "Sheikh Rashed Hayder Noori",
                position: "Head of the Department of Computer Science and Engeeniring",
              ),

              SizedBox(width: 10,),

              SpecialMessage(
                imageUrl: "https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg",
                specialMessage: '"asfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfa"',
                name: "Sheikh Rashed Hayder Noori",
                position: "Head of the Department of Computer Science and Engeeniring",
              ),

              SizedBox(width: 10,),

              SpecialMessage(
                imageUrl: "https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg",
                specialMessage: '"asfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfa"',
                name: "Sheikh Rashed Hayder Noori",
                position: "Head of the Department of Computer Science and Engeeniring",
              ),

              SizedBox(width: 10,),

              SpecialMessage(
                imageUrl: "https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg",
                specialMessage: '"asfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfa"',
                name: "Sheikh Rashed Hayder Noori",
                position: "Head of the Department of Computer Science and Engeeniring",
              ),

              SizedBox(width: 10,),

              SpecialMessage(
                imageUrl: "https://faculty.daffodilvarsity.edu.bd/images/teacher/d5d06cf0a79a30f4a8a0eebfe152f1ef.jpg",
                specialMessage: '"asfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfaasfjalskfjasljfal;sfjasl;fjsalfa"',
                name: "Sheikh Rashed Hayder Noori",
                position: "Head of the Department of Computer Science and Engeeniring",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
