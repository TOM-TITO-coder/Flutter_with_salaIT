import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen() ,
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageInx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Activities",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )
        ),
        backgroundColor: Colors.blue[400],
      ),

      body: _buildUI(context),
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx){
          setState(() {
            pageInx = idx;
          });
        },
        currentIndex: pageInx,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30,), 
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: 30,), 
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_outlined, size: 30,), 
            label: "Weather",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.run_circle_outlined, size: 30,), 
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

Widget _buildUI(BuildContext context){
 return SafeArea(
   child: Container(
    padding: const EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.height * 1,
    child: Center(
      child: Column(
        children: [
          const Column(
            children: [
              Text(
                "<  Yesterday  >",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "567",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                "Calories are burned",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.grey
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(
                child: Icon(
                  Icons.run_circle_outlined, 
                  size: 100, 
                  color: Colors.blue,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.0),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 1.0,
                    )
                  ]
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Steps",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "201",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "1200",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          " of 2000",
                          style: TextStyle(
                            //fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "You reach to more for being healty",
                      style: TextStyle(
                        //fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(2, 2),
                  blurRadius: 0.8,
                ),
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Trainings",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.add_circle_rounded,
                        color: Colors.red[400],
                        size: 40,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text("Weight Loss"),
                    Text("256"),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  "video week2 • 45min",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(2, 2),
                  blurRadius: 0.8,
                ),
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Exercise",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.add_circle_rounded,
                        color: Colors.red[400],
                        size: 40,
                      ),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Text("Running"),
                    Text("210"),
                  ],
                ),
                const SizedBox(height: 5,),
                const Text(
                  "15min",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
   ),
 );    
}
