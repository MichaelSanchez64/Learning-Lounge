import 'package:flutter/material.dart';
import 'package:flutter_chat/groups.dart';
import 'main.dart';

class JoinGroupPage extends StatelessWidget {
  static const routeName = '/join-group'; // Route name for JoinGroupPage

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Lounge',
      home: HomeScreen(),
      routes: {
        JoinGroupPage.routeName: (context) => JoinGroupPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252525),
      appBar: AppBar(
        backgroundColor: Color(0xFF353535), // Set app bar color to #353535
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Groups Search',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Color(0xFF353535),
                filled: true,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Replace with your desired content
                  Text(
                    'No groups found',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF168C5A),
                    ),
                    child:
                      Text('Create Group', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF353535),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifiactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Join or Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 2, // Set the currentIndex to 3 for "Groups" button
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
            );
          } 
          else if(index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GroupPage()), // Navigate to HomePage
            );
          }
        },
      ),
    );
  }
}
