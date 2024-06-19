import 'package:flutter/material.dart';
import 'package:salait_homework/homework4/constant.dart';

class HomePage4 extends StatelessWidget {
  HomePage4({super.key});

  final _listThumnailImageMovies = [
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/iADOJ8Zymht2JPMoy3R7xceZprc.jpg',
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg',
  ];

  final _listCategories = [
    "All",
    "Action",
    "Comedy",
    "Romance",
    "Drama",
    "Terrible"
  ];

  final _listMovies = [
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg',
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg',
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/lW6IHrtaATxDKYVYoQGU5sh0OVm.jpg',
    'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/qZPLK5ktRKa3CL4sKRZtj8UlPYc.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return SingleChildScrollView(
      child: Column(
        children: [
          _appBar(context),
          const SizedBox(
            height: 20,
          ),
          _categories(context),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _listPopularMovies(context),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latet Movies",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _listPopularMovies(context),
        ],
      ),
    );
  }

  Widget _listPopularMovies(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _listMovies.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: kBackgroundColor.withOpacity(1),
                    blurRadius: 50,
                    spreadRadius: 50,
                  )
                ],
              ),
              child: ClipRRect(
                //clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  _listMovies[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }

  Widget _categories(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Categories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _listCategories.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kButtonPrimaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _listCategories[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            itemCount: _listThumnailImageMovies.length,
            itemBuilder: (context, index) {
              var img = _listThumnailImageMovies[index];
              return Image(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              );
            },
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _listThumnailImageMovies
                  .map(
                    (e) => Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
