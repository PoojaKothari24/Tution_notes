import 'package:flutter/material.dart';  
  
void main() => runApp(const NotesApp());  
  
/// This Widget is the main application widget.  
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  
  @override  
  Widget build(BuildContext context) {  
    return const MaterialApp(  
      home: MyNavigationBar (),  
    );  
  }  
}  
  
class MyNavigationBar extends StatefulWidget {  
  const MyNavigationBar ({Key? key}) : super(key: key);  
  
  @override  
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();  
}  
  
class _MyNavigationBarState extends State<MyNavigationBar > {  
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),    
    Text('Notes Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)), 
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)), 
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Navigation Bar'),  
          backgroundColor: Color.fromARGB(255, 39, 195, 243)  
      ),  
      body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: 'home', 
            backgroundColor: Color.fromARGB(255, 24, 182, 240)  
          ),  
         
          BottomNavigationBarItem(  
            icon: Icon(Icons.book),  
            label: 'My Notes',  
            backgroundColor: Color.fromARGB(255, 35, 167, 238)  ,  
          ), 
           BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: 'My Profile',  
            backgroundColor: Color.fromARGB(255, 12, 108, 225)   
          ),   
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,  
        iconSize: 40,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    );  
  }  
}  