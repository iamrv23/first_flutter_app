import 'package:flutter/material.dart';

class ViewList extends StatelessWidget {
  ViewList({Key? key}) : super(key: key);

  List<String> products = ["Fridge", "TV", "Radio"];
  List<String> products_d = [
    "Cooling machine",
    "Watch Sports",
    "Listen your fave Music"
  ];
  List<int> price = [7000, 15000, 2000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      drawer: Drawer(
        elevation: 120,
        child: ListView(children: const [
          UserAccountsDrawerHeader(
              accountName: Text("James"), accountEmail: Text("abc@gmail.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.edit_calendar),
            title: Text('Calender'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Profile'),
          ),
        ]),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0].toString())),
              title: Text(products[index]),
              subtitle: Text(products_d[index]),
              trailing: Text(price[index].toString()),
              onTap: () {},
              shape:
                  Border(bottom: BorderSide(width: 1.0, color: Colors.black)),
            );
          },
        ),
      ),
    );
  }
}

void test() {
//
//   padding: EdgeInsets.all(5.0),
//   child: ListView(
//   children: [
//   ListTile(
//   leading: Icon(
//   Icons.account_circle,
//   ),
//   title: Text('Person Name'),
//   subtitle: Text('Designation'),
//   trailing: Icon(Icons.folder_open_outlined),
//   onTap: () {},
//   ),
//   ListTile(
//   leading: Icon(
//   Icons.account_circle_outlined
//   ),
//   title: Text('Person Name'),
//   subtitle: Text('Designation'),
//   trailing: Icon(Icons.folder_open_outlined),
// onTap: () {},
// ),
// ListTile(
// leading: Icon(
// Icons.account_circle_outlined
// ),
// title: Text('Person Name'),
// subtitle: Text('Designation'),
// trailing: Icon(Icons.folder_open_outlined),
// onTap: () {},
//   )
//   ],
//   ),
}
