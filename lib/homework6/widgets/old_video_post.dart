import 'package:flutter/material.dart';

class OldVideoPost extends StatelessWidget {
  const OldVideoPost({
    super.key,
    required this.title,
    required this.urlImg,
    required this.subtitle,
    required this.numberLike,
  });

  final String title;
  final String urlImg;
  final String subtitle;
  final String numberLike;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width * 0.43,
          height: size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(urlImg),
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.darken,
              ),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.1,
                child: const Stack(
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Positioned(
                      left: 5,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Positioned(
                      left: 15,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                numberLike,
                style: const TextStyle(),
              ),
              SizedBox(
                width: size.width * 0.08,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
