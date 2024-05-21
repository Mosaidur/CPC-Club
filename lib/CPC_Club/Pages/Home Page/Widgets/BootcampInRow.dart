import 'package:flutter/cupertino.dart';

import 'Bootcamp.dart';

class BootcampInRow extends StatelessWidget {
  const BootcampInRow({super.key});

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

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "C khoon Spring 2024 ",
                onTap: () {  },
              ),

              SizedBox(width: 10,),

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "Research Workshop Volume 5",
                onTap: () {  },
              ),

              SizedBox(width: 10,),

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "C khoon Spring 2024 ",
                onTap: () {  },
              ),

              SizedBox(width: 10,),

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "C khoon Spring 2024 ",
                onTap: () {  },
              ),

              SizedBox(width: 10,),

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "C khoon Spring 2024 ",
                onTap: () {  },
              ),

              SizedBox(width: 10,),

              Bootcamp(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/428608058_800269265474017_4691193692048786250_n.jpg?stp=dst-jpg_p180x540&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE_h_FKk2dR46QglILX8ynzpbH-POPsQGKlsf484-xAYqEux00k5Hg0kGAmaWpYNU7jWIRfBKQz53Xq8cdt8ztz&_nc_ohc=yrfTtV6dNu8Q7kNvgEN16aT&_nc_ht=scontent.fdac135-1.fna&oh=00_AYCyJGrxnlBCR0ZygF51aaLRGb-dnseC0rdGdlfBKjBD1w&oe=664779EF',
                eventName: "C khoon Spring 2024 ",
                onTap: () {  },
              ),

              SizedBox(width: 10,),



            ],
          ),
        ),
      ),
    );
  }
}
