import 'package:flutter/material.dart';
import 'package:salait_homework/homework5/detail_page5.dart';
import 'package:salait_homework/homework5/order_page5.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({super.key});

  @override
  State<HomePage5> createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildUI(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (int index) {
          setState(() {
            myIndex = index;
          });
          if (myIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const OrderPage5();
                },
              ),
            );
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_sharp),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Image(
                  image: NetworkImage(
                    "https://images.vexels.com/media/users/3/143191/isolated/lists/925871db899c05172adae868b7ca93c0-orange-color-icon.png",
                  ),
                ),
              ),
              const Icon(
                Icons.notification_add_outlined,
                size: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Curren locaton",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          _searchBar(context),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // const CategoryCard(
          //   title: "American",
          //   urlImg: "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
          // ),
          _listCategories(context),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PromotionCard(
                    context: context,
                    color: Colors.orange,
                    title: "Get",
                    subtitle: "on the food",
                    promtionTitle: "25% OFF",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  PromotionCard(
                    context: context,
                    color: Colors.pinkAccent,
                    title: "Big holiday",
                    subtitle: "on order",
                    promtionTitle: "Combo",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top restaurants",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 20,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final String herotag = 'hero-tag-$index';
                String imagePath = 'assets/images/hamburger.jpg';
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailPage5(
                            imagePath: imagePath,
                            imageTag: herotag,
                          );
                        },
                      ),
                    );
                  },
                  child: Hero(
                    tag: herotag,
                    child: CardProduct(
                      time: "15-20",
                      title: "Burger Queen",
                      rateProduct: "⭐4.5",
                      reviewProduct: "100+Review",
                      urlImg: imagePath,
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

  Widget _listCategories(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.19,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryCard(
                title: 'American',
                urlImg:
                    "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
              ),
              CategoryCard(
                title: 'Italian',
                urlImg:
                    "https://icons.iconarchive.com/icons/google/noto-emoji-food-drink/512/32386-sandwich-icon.png",
              ),
              CategoryCard(
                title: 'Mexican',
                urlImg:
                    "https://cdn-icons-png.flaticon.com/512/3032/3032598.png",
              ),
              CategoryCard(
                title: 'Lunch',
                urlImg:
                    "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
              ),
              CategoryCard(
                title: 'Desert',
                urlImg:
                    "https://cdn-icons-png.flaticon.com/512/2484/2484386.png",
              ),
            ],
          ),
        ));
  }

  Widget _searchBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.05,
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: "Search food",
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
              keyboardType: TextInputType.text,
              //obscureText: true,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          icon: const Icon(
            Icons.line_weight,
            size: 50,
          ),
        ),
      ],
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
    required this.title,
    required this.time,
    required this.rateProduct,
    required this.reviewProduct,
    required this.urlImg,
  });

  final String time;
  final String title;
  final String rateProduct;
  final String reviewProduct;
  final String urlImg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(15),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: const Alignment(0.9, -0.8),
              children: [
                Image.asset(
                  urlImg,
                  fit: BoxFit.cover,
                ),
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$time min",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        rateProduct,
                        style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        reviewProduct,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    super.key,
    required this.context,
    required this.color,
    required this.title,
    required this.promtionTitle,
    required this.subtitle,
  });

  final BuildContext context;
  final Color color;
  final String title;
  final String promtionTitle;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            width: MediaQuery.of(context).size.width * 0.3,
            alignment: Alignment.center,
            child: Expanded(
              child: Text.rich(
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "\n$promtionTitle",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "\n$subtitle",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: -40,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              //height: MediaQuery.of(context).size.height * 0.5,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                //color: Colors.green,
              ),
              child: Image.asset(
                "assets/images/food.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String? title;
  final String? urlImg;
  const CategoryCard({
    super.key,
    required this.title,
    required this.urlImg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
              urlImg!,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
