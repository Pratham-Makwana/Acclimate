import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String image;
  final String weatherType;
  final String time;

  const WeatherCard({
    super.key,
    required this.image,
    required this.weatherType,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Image.asset(
              image,
              scale: 8,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  weatherType,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text(
                  time,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
