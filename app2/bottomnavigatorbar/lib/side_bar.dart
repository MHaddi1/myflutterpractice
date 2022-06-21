import 'dart:ffi';

import 'package:bottomnavigatorbar/home_screen.dart';
import 'package:bottomnavigatorbar/nav.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Muhammad Haddi'),
            accountEmail: const Text('muhammadhaddi@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media-exp2.licdn.com/dms/image/C5603AQHbMd2XfMBiFQ/profile-displayphoto-shrink_200_200/0/1638182197224?e=1660780800&v=beta&t=y249rYWd8WOS1WQoZIS10JNJhAR-g6lukC-D3IwXoEs',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/originals/49/75/d9/4975d9b870d186097c0e8180b94a8a2a.png'),
                  fit: BoxFit.cover,
              ),
              
            ),
          ),
         ListTile(
          leading: const Icon(Icons.favorite,
          ),
          title: const Text('Favorites'),
          onTap: (){
           
       // print('You Tap to Favorite Button');
        const snackBar = SnackBar(content: Text('Tap On Faviorites Button'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
        ],
      ),
      
    );
    
  }

}
