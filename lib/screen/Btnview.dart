import 'package:flutter/material.dart';

class BtnView extends StatelessWidget {
  const BtnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(250, 80),
            primary: Colors.yellow,
            onPrimary: Colors.black,
            elevation: 15,
            shadowColor: Colors.yellow,
            side: BorderSide(color: Colors.yellow, width: 2.0),
            alignment: Alignment.center,
            shape: StadiumBorder(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Let's shopping"),
              Icon(Icons.shopping_bag_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
