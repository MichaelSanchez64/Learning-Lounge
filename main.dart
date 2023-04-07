//HOME SCREEN

import 'package:flutter/material.dart';
import 'groups.dart'; // Import the GroupPage file
import 'join_group.dart'; // Import the JoinGroupPage file

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Lounge',
      theme: ThemeData(),
      home: HomeScreen(),
      routes: {
        GroupPage.routeName: (context) => GroupPage(),
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
              'Start - No Groups',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Looks like you don\'t have any groups.',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            Text(
              'Why not join one?',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => JoinGroupPage()), // Navigate to JoinGroupPage
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF168C5A),
              ),
              child: Text('Join a group',
                  style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF168C5A),
              ),
              child: Text('Create Group',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
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
            label: 'Notifications',
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
        currentIndex: 0, // Set the currentIndex to 3 for "Groups" button
        onTap: (index) {
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GroupPage()), // Navigate to GroupPage
            );
          }
           else if(index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JoinGroupPage()), // Navigate to HomePage
            );
          }
        },
      ),
    );
  }
}
