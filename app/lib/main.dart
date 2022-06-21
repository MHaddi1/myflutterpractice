import "package:flutter/material.dart";
void main(){
  runApp(app());
}

MaterialApp app(){
  int _selectedIndex=0;
  
  return MaterialApp(
    home:Scaffold(
    
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 210, 84),
        title: const Text ("Haddi App",style: TextStyle(fontSize: 20,
        ),
        ),
        
// actionsIconTheme: const IconThemeData(
//   size: 30,
//   color: Colors.black,
//   opacity: 10.0,
// ),
        leading: GestureDetector(
    onTap: () { /* Write listener code here */ },
    child: const Icon(
      Icons.menu,
    ),
  ),
  actions: <Widget>[
    Padding(padding: const EdgeInsets.only(right: 20.0),
    child: GestureDetector(
      onTap: (){},
      child: const Icon(
        Icons.search,
        size: 26,
      ),
    ),
    ),
    Padding(padding: const EdgeInsets.only(right: 20.0),
    child: GestureDetector(
      onTap: (){},
      child: const Icon(
        Icons.more_vert,
      )
    ),
    ),
    
  ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        
  
        backgroundColor: const Color.fromARGB(255, 79, 210, 84),
     items: const <BottomNavigationBarItem>[
         
       BottomNavigationBarItem(
         icon: Icon(Icons.call),
         label: "Call",
       ),
       
       BottomNavigationBarItem(
         icon: Icon(Icons.camera),
         label: "Camera",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.chat),
         label: "Chat",
       ),
      
     ],
     
      ),
    ),
    
    debugShowCheckedModeBanner: false,
  );
  
}