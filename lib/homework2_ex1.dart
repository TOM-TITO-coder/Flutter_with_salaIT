import 'package:flutter/material.dart';

class HomeWork2Ex2 extends StatelessWidget {
  const HomeWork2Ex2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildUI(),
    );
  }

  Widget _buildUI(){
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40,),
          _topBar(),
          const SizedBox(height: 40,),
          _videoPlayer(),
          const SizedBox(height: 30,),
          const Text(
            "Figma master class for beginnners",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10,),
          _rateStar(),
          const DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: 'Lessons', ),
                    Tab(text: 'Description'),
                    
                  ],
                  
                  enableFeedback: false,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              
              width: double.infinity,
              height: 260,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                    const SizedBox(height: 20,),
                    _listvideo(),
                  ],
                ),
              ),
              
            ),
          ),
          Row(
            children: [
              FloatingActionButton(
                onPressed: (){}, 
                backgroundColor: Colors.white,
                
                child: const Text(
                  "\$399",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: []
                  ),
                  child: const Center(
                    child: Text(
                      "Enroll Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
              
            ],
          )
        ],
      ),

    );
  }

  Widget _topBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
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
            ],
          ),
          child: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        const Text(
          "Course Overview",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Container(
          width: 48,
          height: 48,
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
            ]
          ),
          child: const Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
        )
      ],
    );
  }

  Widget _videoPlayer(){
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: AssetImage('assets/images/lesson.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(  // Position play button in center
        alignment: Alignment.center,
        child: ClipRRect( // Clip rounded corners
          borderRadius: BorderRadius.circular(10.0), // Adjust corner radius
          child: Container( // Customize play button container
            padding: const EdgeInsets.all(10.0),
            color: Colors.white, // Set background color
            child: const Icon(
              size: 30,
              Icons.play_arrow,
              color: Colors.blue, // Adjust icon color if needed
            ),
          ),
        ),
      ),
    );

  }
  
  Widget _rateStar(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            // color: Color.fromARGB(255, 235, 244, 255),
            // borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: const Row(
            children: [
              Icon(Icons.access_time, color: Colors.grey,),
              Text(
                "6h 30min . 28 lessons",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 244, 255),
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: const Text(
            "⭐ 4.9",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }

  Widget _listvideo(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.blue,
          ),
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introduction to figma",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "04:28",
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        ),
        const SizedBox(width: 80,),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.blue,
        )
      ],
    );
  }

}