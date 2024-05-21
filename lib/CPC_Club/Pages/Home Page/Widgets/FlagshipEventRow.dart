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
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                 onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

              SizedBox(width: 10,),

              FlagshipEvent(
                imageUrl: 'https://scontent.fdac135-1.fna.fbcdn.net/v/t39.30808-6/440934203_851545407013069_1985698308757073843_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEQN5TnnKphaIkYMHrkg5NFd0ORSooBDgt3Q5FKigEOC0zjxXWtWu72RSusGEeCe1zBY_0nqTScHlbTWm7NzHCG&_nc_ohc=i6SHZuscsGYQ7kNvgHNIkiN&_nc_ht=scontent.fdac135-1.fna&oh=00_AYAI1sewquqUnILcU7VaWRSBQ2weiDcA-Pwi4_P29ikFMw&oe=6646D8B0',
                // eventName: 'Take Off',
                onTap: () {  }, ),

            ],
          ),
        ),
      ),
    );;
  }
}
