import 'package:flutter/material.dart';

class Exercise3 extends StatelessWidget {
  const Exercise3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildUI(context),
      ),
      bottomNavigationBar: const _BottomBar(),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 16,
        right: 16,
        bottom: 0,
      ),
      child: Column(
        children: [
          _appBar(),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                _cardProduct(context),
                _cardProduct(context),
                _cardProduct(context),
                _cardProduct(context),
              ],
            ),
          ),
          _promocodeButton(context),
          _detailPrice(),
        ],
      ),
    );
  }

  Widget _detailPrice() {
    return const Padding(
      padding: EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "subtotal: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$800.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery Fee: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "\$5.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                "40%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _promocodeButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "ADJ3AK",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Text(
                  "Promocode applies ",
                  style: TextStyle(color: Color(0xff48d861)),
                ),
                Icon(
                  Icons.check_circle,
                  color: Color(0xff48d861),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _cardProduct(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        //color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.1),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("assets/images/iphone.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Iphone X 2020",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.cancel_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "1TB",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$570.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                foregroundColor: Colors.red,
                                padding: EdgeInsets.zero,
                              ),
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            //alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.zero,
                                //backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                side: const BorderSide(
                                  color: Colors.green,
                                  width: 1,
                                ),
                              ),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.grey,
          ),
        ),
        const Text(
          "My cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: const Icon(
            Icons.more_horiz_outlined,
            size: 20,
            //color: Colors.red,
          ),
        ),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 40),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff48d861),
              //fixedSize: Size(200, 200),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text(
              "Checkout for \$480.00",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
