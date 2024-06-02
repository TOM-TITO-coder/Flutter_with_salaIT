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
          "Calculator",
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
        backgroundColor: Colors.pinkAccent,
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
 final size = MediaQuery.of(context).size;
 return SafeArea(
   child: SizedBox(
    //padding: const EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width * 1,
    height: MediaQuery.of(context).size.height * 1,
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Column(
              children: [
                Text(
                  "<  Today  >",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){}, 
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.pinkAccent),
                    minimumSize: MaterialStatePropertyAll(
                      Size(
                        size.width * 0.45, 
                        size.height * 0.03,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Food",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){}, 
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(
                      Size(
                        size.width * 0.45, 
                        size.height * 0.03,
                      ),
                    ),
                    overlayColor: const MaterialStatePropertyAll(Colors.pinkAccent)
                  ),
                  child: const Text(
                    "Water",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.blue
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  cardUI(
                    context,
                    title: "Dinner • 313",
                    description: "Fried eggs",
                    calories: "256",
                    icon: Icons.add_circle_rounded,
                    onButtonPressed: () {
                      
                    },
                  ),
                  const SizedBox(height: 20.0),
                  cardUI(
                    context,
                    title: "Supper • 313",
                    description: "Fried eggs",
                    calories: "256",
                    icon: Icons.add_circle_rounded,
                    onButtonPressed: () {
                      
                    },
                  ),
                  const SizedBox(height: 20.0),
                  cardUI(
                    context,
                    title: "Lunch • 313",
                    description: "Fried eggs",
                    calories: "256",
                    icon: Icons.add_circle_rounded,
                    onButtonPressed: () {
                      
                    },
                  ),
                  const SizedBox(height: 20.0),
                  cardUI(
                    context,
                    title: "Night • 313",
                    description: "Fried eggs",
                    calories: "256",
                    icon: Icons.add_circle_rounded,
                    onButtonPressed: () {
                      
                    },
                  ),
                  //const SizedBox(height: 20.0),
                  
                ],
              ),
            )
        
          ],
        ),
      ),
    ),
   ),
 );    
}

Container cardUI(BuildContext context, {
  required String title,
  required String description,
  required String calories,
  required IconData icon,
  VoidCallback? onButtonPressed, // 
}) {
  return Container(
    padding: const EdgeInsets.all(15.0),
    width: MediaQuery.of(context).size.width * 0.9, // Adjust width for better scrolling
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          offset: const Offset(2.0, 2.0),
          blurRadius: 0.8,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: onButtonPressed, // Call the provided callback if available
              icon: Icon(
                icon,
                color: Colors.red[400],
                size: 40.0,
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(description),
              Text(
                calories,
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          "125 g",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Latte"),
              Text(
                "57",
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          "125 g",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
