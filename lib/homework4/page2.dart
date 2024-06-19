import 'package:flutter/material.dart';
import 'package:salait_homework/homework4/constant.dart';

class MovieDetail4 extends StatelessWidget {
  const MovieDetail4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _appBar(context),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Kindom of the Monkey",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "\n\n       2019 • Adventure, Comedy • 2h 8m",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: kButtonPrimaryColor,
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.45,
                  MediaQuery.of(context).size.height * 0.06,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
              label: const Text(
                "Play",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.1),
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.45,
                  MediaQuery.of(context).size.height * 0.06,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.download_outlined,
                color: Colors.white,
              ),
              label: const Text(
                "Download",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      "Kong, a street boy who falls in love with a princess. With diffrerences in caste and wealth, Kong tries to find a way to become a prince...",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "Read more",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        _tabBar(context),
        const SizedBox(
          height: 10,
        ),
        _cardTrailer(context),
      ],
    );
  }

  Widget _cardTrailer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.2,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.18,
              //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Traller",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.download),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "Kong, a street boy who falls in love with a princess. With differences caste and wealth, Kong tries to find...",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabBar(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: kButtonPrimaryColor,
            labelStyle: const TextStyle(
              color: kButtonPrimaryColor,
              fontSize: 20,
            ),
            dividerHeight: BorderSide.strokeAlignCenter,
            labelPadding: const EdgeInsets.symmetric(vertical: 15),
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.white.withOpacity(0.6),
            tabs: const [
              Text(
                "Episode",
              ),
              Text(
                "Similar",
              ),
              Text(
                "About",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, -0.7),
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 50,
                spreadRadius: 10,
                blurStyle: BlurStyle.inner,
                color: Colors.black,
              ),
            ],
          ),
          child: Image.network(
            "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg",
            fit: BoxFit.cover,
            //colorBlendMode: BlendMode.darken,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.save_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
