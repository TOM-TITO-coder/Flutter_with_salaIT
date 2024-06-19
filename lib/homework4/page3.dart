import 'package:flutter/material.dart';
import 'package:salait_homework/homework4/constant.dart';

class DownloadPage4 extends StatelessWidget {
  const DownloadPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Download",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: kBackgroundColor,
      ),
      backgroundColor: kBackgroundColor,
      body: _buildUI(context),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 34, 37, 52),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt_outlined),
            label: "Save",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined),
            label: "Download",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Me",
          ),
        ],
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _tabBar(),
        const SizedBox(
          height: 20,
        ),
        CardMoviesDownload(
          context: context,
          url:
              "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg",
          title: "Atlas (2024): The Winter soldier",
        ),
        const SizedBox(
          height: 20,
        ),
        CardMoviesDownload(
          context: context,
          url:
              "https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg",
          title: "Kingdom of the Planet of the Apes (2024)",
        ),
      ],
    );
  }

  Widget _tabBar() {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            labelColor: kButtonPrimaryColor,
            dividerHeight: BorderSide.strokeAlignCenter,
            padding: const EdgeInsets.all(10),
            indicatorColor: kButtonPrimaryColor,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            tabs: const [
              Text(
                "Downloaded",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Downloading",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardMoviesDownload extends StatelessWidget {
  const CardMoviesDownload({
    super.key,
    required this.context,
    required this.url,
    required this.title,
  });

  final BuildContext context;
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  fit: BoxFit.cover,
                  url,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert_outlined),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Action, Adventure",
                      style: TextStyle(
                        color: Colors.white.withOpacity(
                          0.5,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "2:05:32 | 12GB",
                      style: TextStyle(
                        color: Colors.white.withOpacity(
                          0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
