import 'package:bottomnavigatorbar/home_screen.dart';
import 'package:bottomnavigatorbar/message_screen.dart';
import 'package:bottomnavigatorbar/profile_screen.dart';
import 'package:bottomnavigatorbar/side_bar.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex=0;
  final List <Widget> _widgetsOption = <Widget>[
    const Home(),
    const Messages(),
    const ProfileScreen(),
  ];
  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        
        backgroundColor: Colors.red,
        title: const Text("Bottom Nav Bar"),
      ),
      body: Center(
        child: _widgetsOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
