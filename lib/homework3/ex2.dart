import 'package:flutter/material.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      body: _buildUI(),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 0,
            ),
            child: _appBar(),
          ),
          _imageDisplay(),
          _detailProduct(),
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
        Row(
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
                Icons.favorite_sharp,
                size: 20,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 10,
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
              alignment: Alignment.center,
              child: const Icon(
                Icons.upload_outlined,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }

  //dispaly image
  Widget _imageDisplay() {
    return Container(
      child: const Image(
        image: AssetImage("assets/images/iphone.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  // detailProduct
  Widget _detailProduct() {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(1, 1),
              blurRadius: 4,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Iphone series X",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      "% On sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                        ),
                        Text(
                          " 4.8",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_rounded,
                          size: 16,
                          color: Colors.green,
                        ),
                        Text(
                          " 94%",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "117 votes",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              // text descript product,
              const Text(
                """
The Iphone series X is capable of impressing with minimal boot times and mesmerizing visual effects when playing games at up to 120 frames per second.
The Iphone series X is capable of impressing with minimal boot times and mesmerizing visual effects when playing games at up to 120 frames per second.
                """,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff48d861),
                    ),
                    child: const Text(
                      "1TB",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 2,
                      ),
                    ),
                    child: const Text(
                      "825 GB",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 2,
                      ),
                    ),
                    child: const Text(
                      "825 GB",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _bottomBar extends StatelessWidget {
  const _bottomBar({
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text.rich(
              TextSpan(
                text: "\$650.0",
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
                children: [
                  TextSpan(
                    text: "\n\$570.00",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff48d861),
                  fixedSize: Size(200, 200),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
