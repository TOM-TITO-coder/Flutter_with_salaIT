import 'package:flutter/material.dart';
import 'package:salait_homework/homework6/data.dart';
import 'package:salait_homework/homework6/model/old_video.dart';
import 'package:salait_homework/homework6/widgets/old_video_post.dart';

class ProfilePage6 extends StatelessWidget {
  const ProfilePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: _buildUI(context)),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile
          _profile(context),
          _followProfile(context),
          SizedBox(
            height: size.height * 0.014,
          ),
          const Text(
            "✈️ Travel freak • UI/UX Designer",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const Text(
            "🔗www.travelfreak.com",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          _oldVideoPost(context),
        ],
      ),
    );
  }

  Widget _oldVideoPost(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.8,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: size.width / (size.height * 0.6),
        ),
        itemCount: oldVideos.length,
        itemBuilder: (context, index) {
          OldVideo oldVideo = oldVideos[index];
          return SizedBox(
            width: size.width,
            height: size.height * 0.3,
            child: OldVideoPost(
              title: oldVideo.title,
              urlImg: oldVideo.urlImg,
              subtitle: oldVideo.subtitle,
              numberLike: oldVideo.numberLike,
            ),
          );
        },
      ),
    );
  }

  Widget _followProfile(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          children: [
            Text(
              "765",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Posts",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          height: size.height * 0.05,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              )),
        ),
        const Column(
          children: [
            Text(
              "23.6k",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Followers",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          height: size.height * 0.05,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              )),
        ),
        const Column(
          children: [
            Text(
              "23.6k",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Following",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _profile(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.avif"),
            ),
          ],
        ),
        // name
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "John Smith",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            const Icon(
              Icons.verified,
              color: Colors.blue,
              size: 20,
            ),
          ],
        ),
        const Text(
          "@john_smith",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
