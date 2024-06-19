import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    super.key,
    required this.name,
    required this.urlImg,
  });

  final String name;
  final String urlImg;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  12,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    urlImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                Text(
                  name,
                  style: const TextStyle(),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                const Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 14,
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),
            child: const Text(
              "Live",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
