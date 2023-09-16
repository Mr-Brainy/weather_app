import 'package:flutter/material.dart';

class ForeCastItems extends StatelessWidget {
  const ForeCastItems({
    super.key,
    required this.icon,
    required this.time,
    required this.temperature,
  });
  final String time;
  final IconData icon;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Icon(
              icon,
              size: 32.0,
            ),
            const SizedBox(height: 8.0),
            Text(temperature),
          ],
        ),
      ),
    );
  }
}

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({
    super.key,
    required this.icon,
    required this.text,
    required this.title,
  });
  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40.0,
        ),
        const SizedBox(height: 10.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
