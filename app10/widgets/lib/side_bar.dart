import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.zero,
        children: <Widget> [
          UserAccountsDrawerHeader(
            accountName: const Text('Muhammad Haddi'),
            accountEmail: const Text('muhammadhaddi@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://media-exp2.licdn.com/dms/image/C5603AQHbMd2XfMBiFQ/profile-displayphoto-shrink_200_200/0/1638182197224?e=1660780800&v=beta&t=y249rYWd8WOS1WQoZIS10JNJhAR-g6lukC-D3IwXoEs',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
                ),
              
              ),
              
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1514675239066-bd9d6d21c926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGV4dCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80'),
                fit: BoxFit.cover,
              )
            ),
          ),
        
           ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorite'),
            onTap: () => print('tap On Fav'),
          ),
        
          ListTile(
            leading: const Icon(Icons.backpack),
            title: const Text('Backup'),
            onTap: ()=> print('Tap On Backup'),
          ),
          
          ListTile(
            leading: const Icon(Icons.archive),
            title: const Text('Archive'),
            onTap: () => print('Tap on Archive'),
          ),
          
          ListTile(
            leading: const Icon(Icons.analytics),
            title: const Text('Analytics'),
            onTap: () => print('Tap on Analytics'),
          ),
          
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Setting'),
            onTap: () => print('Tap on Setting'),
          ),
         
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Alram'),
            onTap: () => print('Tap on Alram'),
          ),
         
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Chat'),
            onTap: () => print('Tap on Chat'),
          ),
          
        ],
        
      ),
      
    );
  }
}
