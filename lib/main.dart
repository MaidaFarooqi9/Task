import 'package:flutter/material.dart';
import 'package:selectiontask/Tabs_Items.dart';


void main() => runApp(MaterialApp(home:Tabs(),debugShowCheckedModeBanner: false,));


class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  IconThemeData selectedIconTheme = const IconThemeData(size: 20.0);
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Transactions(),
    Services(),
    Profile()
  ];
  var _currenttab;
  @override
  initState() {
    setState(() {
      super.initState();
      _currenttab = tabs[_currentIndex];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex], //it changes tab pos and show current tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor:Colors.red[200],
        unselectedItemColor: Colors.grey,
       showUnselectedLabels: true,
        iconSize: 27.0,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
        //iconSize: 28,
        //backgroundColor: Color.fromARGB(23, 44, 12, 43),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: (ImageIcon(AssetImage('assets/home.png'))),
          ),
          BottomNavigationBarItem(
            title: Text("Transaction"),
            icon: ImageIcon(AssetImage('assets/transactions.png')),
          ),
          BottomNavigationBarItem(
            title: Text("Services"),
            icon: ImageIcon(AssetImage('assets/services.png')),
          ),
          BottomNavigationBarItem(
            title: Text("Profile"),
            icon: ImageIcon(AssetImage('assets/profile.png')),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      //),
    );
  }
}


