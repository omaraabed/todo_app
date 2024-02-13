import 'package:flutter/material.dart';
import 'package:to_do/screens/settings.dart';
import 'package:to_do/screens/tasks.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName ='HomeLayout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          'TO Do List', style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
backgroundColor: Color(0xff5D9CEC),
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        onPressed: () {

        },child: Icon(Icons.add,size: 30,color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: index,
        onTap: (value) {
          index=value;
          setState(() {

          });
        },
        items: [

          BottomNavigationBarItem(icon:Icon(Icons.list,),label: ''),
          BottomNavigationBarItem(icon:Icon(Icons.settings,),label: ''),
        ],
      ),
      body: tabs[index],
    );

  }
  List<Widget>tabs=[TaskTab(),SettingsTab()];
}
