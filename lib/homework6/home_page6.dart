import 'package:flutter/material.dart';

import 'package:salait_homework/homework6/data.dart';
import 'package:salait_homework/homework6/model/block.dart';
import 'package:salait_homework/homework6/model/story.dart';
import 'package:salait_homework/homework6/widgets/block_card.dart';
import 'package:salait_homework/homework6/widgets/stories_card.dart';

class HomePage6 extends StatelessWidget {
  const HomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buldUI(context),
      ),
      bottomNavigationBar: _bottomBar(context),
    );
  }

  Widget _bottomBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: "Post",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Profile",
        ),
      ],
    );
  }

  Widget _buldUI(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text(
                "Stories",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              _listStories(context),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              _block(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _block(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.45,
      child: ListView.builder(
        itemCount: blocks.length,
        itemBuilder: (context, index) {
          Block block = blocks[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: BlockCard(
              name: block.name,
              urlProfile: block.urlProfile,
              urlImg: block.urlImg,
              describtion: block.describtion,
              postTime: block.postTime,
            ),
          );
        },
      ),
    );
  }

  Widget _listStories(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          Story story = stories[index];
          return Container(
            margin: const EdgeInsets.only(right: 16),
            child: StoriesCard(
              name: story.name,
              urlImg: story.urlImg,
            ),
          );
        },
      ),
    );
  }

  Widget _header() {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?cs=srgb&dl=pexels-chloekalaartist-1043471.jpg&fm=jpg",
        ),
      ),
      title: const Text(
        "John Smith",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: const Text(
        "@john_smith",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.notifications_none_sharp,
        ),
      ),
    );
  }
}
