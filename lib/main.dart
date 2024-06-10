import 'package:flutter/material.dart';

//import 'package:salait_flutter/homework2_ex1.dart';
//import 'package:salait_flutter/homework3/ex1.dart';
//import 'package:salait_flutter/homework3/ex2.dart';
import 'package:salait_flutter/homework3/ex3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exercise3(),
    );
  }
}

//1.Appbar
//2.Body
//3.BottomNavigatoinBar
//4.Drawer
//5.Color and Container
//Container widget in flutter used to decorate bg-color, padding, margin, border, alignment, etc
//6. Row and Column
//7. Scrollable Widgets (SingleChildScrollView, ListView, PageView)

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: "document"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Tito",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Find your lessons today!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(14)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 16,
                          spreadRadius: 1,
                          offset: const Offset(0, 6),
                        )
                      ]),
                  child: const Icon(
                    Icons.notifications_none,
                    size: 40,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _searchBar(),
            const SizedBox(
              height: 20,
            ),
            _promotionCard(),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular lessons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _cardProduct(),
                    const SizedBox(
                      width: 20,
                    ),
                    _cardProduct(),
                    const SizedBox(
                      width: 20,
                    ),
                    _cardProduct(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 16,
                      spreadRadius: 1,
                      offset: const Offset(0, 6),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    hintText: "Search now...",
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color.fromARGB(255, 61, 143, 239),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 16,
                    spreadRadius: 1,
                    offset: const Offset(0, 6),
                  )
                ]),
            child: const Icon(
              Icons.filter,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _promotionCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color.fromARGB(255, 172, 215, 255),
      ),
      //height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Discover Top Picks",
                  style: TextStyle(
                      color: Color.fromARGB(255, 87, 115, 149),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "+100",
                      style: TextStyle(
                          //color: Color.fromARGB(255, 87, 115, 149),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "lessons",
                        style: TextStyle(
                            //color: Color.fromARGB(255, 87, 115, 149),
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 130,
                  height: 42,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 61, 143, 235),
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: const Center(
                    child: Text(
                      "Explore more",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage("assets/images/banner.png"),
          )
        ],
      ),
    );
  }

  Widget _cardProduct() {
    return Container(
      width: 250,
      height: 290,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 244, 244, 244).withOpacity(1),
                spreadRadius: 1,
                offset: const Offset(0.2, 0.1),
                blurRadius: 6),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/lesson.png"),
                  fit: BoxFit.cover,
                )),
          ),
          const Text(
            "Figma master class",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const Row(
            children: [
              Text(
                "UI Design",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text("(28 lessons)"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 244, 255),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.blue,
                    ),
                    Text(
                      "6h 30min",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "⭐ 4.9",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
