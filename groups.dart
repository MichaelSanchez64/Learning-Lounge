import 'package:flutter/material.dart';
import 'package:flutter_chat/join_group.dart';
import 'main.dart';


class GroupPage extends StatelessWidget {
  static const routeName = '/join-group'; // Route name for JoinGroupPage

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Lounge',
      home: HomeScreen(),
      routes: {
        GroupPage.routeName: (context) => GroupPage(),
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
              'Start - Groups',
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
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF168C5A),
                  ),
                  child: Text('Group 1', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF168C5A),
                  ),
                  child: Text('Group 2', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF168C5A),
                  ),
                  child: Text('Group 3', style: TextStyle(color: Colors.white)),
                ),
              ],
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
            icon: Icon(Icons.message),
            label: 'messages',
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
        currentIndex: 3, // Set the currentIndex to 3 for "Groups" button
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage
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
