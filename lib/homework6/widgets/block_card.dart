import 'package:flutter/material.dart';

class BlockCard extends StatelessWidget {
  const BlockCard({
    super.key,
    required this.name,
    required this.urlProfile,
    required this.urlImg,
    required this.describtion,
    required this.postTime,
  });

  final String name;
  final String urlProfile;
  final String urlImg;
  final String describtion;
  final String postTime;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.09),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //images container
              Container(
                width: size.width,
                height: size.height * 0.16,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      urlImg,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(urlProfile),
                ),
                title: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  postTime,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              // describtion of block
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Text(
                  describtion,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 130,
          right: 10,
          child: Container(
            width: size.width * 0.15,
            height: size.height * 0.04,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 18,
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                const Text(
                  "Like",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
