import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Learning/Bootcamp_description.dart';
import 'ProgramCard.dart';

class UpcommingEventList extends StatefulWidget {
  const UpcommingEventList({super.key});

  @override
  State<UpcommingEventList> createState() => _UpcommingEventListState();
}

class _UpcommingEventListState extends State<UpcommingEventList> {
  final List<Map<String, String>> eventList = [
    {
      'imageUrl': 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
      'Eventname': 'Take Off Spring 2024',
      'RegistrationEndDate': '2-15-2024',
      'RegistrationFee': '500 Taka',
      'ClassStartDate': '3-1-2024',
      'GrpURL': 'https://example.com/group',
      'Description': 'A great opportunity to start your journey in Spring 2024.',
      'PaymentMethods': 'Credit Card, Bank Transfer',
      'TermsAndcondition': 'Terms and conditions apply.',
    },
    // Add more event details as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: eventList.map((event) {
            return ProgramCard(
              imageUrl: event['imageUrl']!,
              Eventname: event['Eventname']!,
              RegistrationEndDate: event['RegistrationEndDate']!,
              RegistrationFee: event['RegistrationFee']!,
              ClassStartDate: event['ClassStartDate']!,
              GrpURL: event['GrpURL']!,
              Description: event['Description']!,
              PaymentMethods: event['PaymentMethods']!,
              TermsAndcondition: event['TermsAndcondition']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}
