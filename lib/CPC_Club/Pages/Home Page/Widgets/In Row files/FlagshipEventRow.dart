import 'package:flutter/cupertino.dart';
import '../FlagshipEvent.dart';

class FlagshipEventRow extends StatelessWidget {
  const FlagshipEventRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> flagshipEvents = const [
      {
        'eventName': 'Take Off',
        'imageUrl': 'https://example.com/take_off_image.jpg'
      },
      {
        'eventName': 'UTA',
        'imageUrl': 'https://example.com/uta_image.jpg'
      },
      {
        'eventName': 'Type Trek face Off',
        'imageUrl': 'https://example.com/type_trek_image.jpg'
      },
      {
        'eventName': 'Googling Contest',
        'imageUrl': 'https://example.com/googling_contest_image.jpg'
      },
      {
        'eventName': 'Datathon',
        'imageUrl': 'https://example.com/datathon_image.jpg'
      },
      {
        'eventName': 'Hackathon',
        'imageUrl': 'https://example.com/hackathon_image.jpg'
      },
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: flagshipEvents.map((event) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: FlagshipEvent(
                // imageUrl: event['imageUrl']!,
                eventName: event['eventName']!,
                onTap: () {},
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
