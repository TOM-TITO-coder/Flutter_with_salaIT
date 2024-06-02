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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"), 
              accountEmail: Text("John@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://imgs.search.brave.com/ZZL4lnNTqep3cP88nmZ6YbthIhTsmW5h_tobIuShv8s/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWd2/My5mb3Rvci5jb20v/aW1hZ2VzL2Jsb2ct/cmljaHRleHQtaW1h/Z2UvMTAtcHJvZmls/ZS1waWN0dXJlLWlk/ZWFzLXRvLW1ha2Ut/eW91LXN0YW5kLW91/dC5qcGc"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text("Hello World")
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: "Setting"
          ),
        ],
      ),
    );
  }
}
