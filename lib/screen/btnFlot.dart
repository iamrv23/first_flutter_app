import 'package:flutter/material.dart';

class BtnFloat extends StatelessWidget {
  const BtnFloat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App'), backgroundColor: Colors.black87),
      backgroundColor: Colors.yellow.shade700,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        elevation: 5,
      ),
  bottomNavigationBar: BottomAppBar(
    notchMargin: 5.0,
    shape: CircularNotchedRectangle(),
    color: Colors.black87,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.shop, color: Colors.white,),
              Text("Shop", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 20.0, bottom: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite, color: Colors.white,),
              Text("Fav", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.settings, color: Colors.white,),
              Text("Setting", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, color: Colors.white,),
              Text("Home", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ],
    ),
  ),
    );
  }
}
