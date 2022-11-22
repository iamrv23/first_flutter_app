import 'package:first_flutter_app/screen/Btnview.dart';
import 'package:first_flutter_app/screen/ViewList.dart';
import 'package:first_flutter_app/screen/btnFlot.dart';
import 'package:first_flutter_app/screen/contView.dart';
import 'package:first_flutter_app/screen/fontView.dart';
import 'package:first_flutter_app/screen/form.dart';
import 'package:first_flutter_app/screen/randomm.dart';
import 'package:first_flutter_app/screen/statefun.dart';
import 'package:first_flutter_app/screen/viewRowCol.dart';
import 'package:first_flutter_app/screen/view_image.dart';
import 'package:flutter/material.dart';
import 'screen/dashboard.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'flutter app',
      themeMode: ThemeMode.system,
      home: ViewForm(
      ),
    );
  }
}

// void main() => runApp(Myapp());
//
// class Myapp extends StatelessWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: MyappSTF(),
//       ),
//     );
//   }
// }

// class MyappSTF extends StatefulWidget {
//   const MyappSTF({Key? key}) : super(key: key);
//
//   @override
//   State<MyappSTF> createState() => _MyappSTFState();
// }
//
// class _MyappSTFState extends State<MyappSTF> {
//
//   bool liked = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ListTile(
//           title: Text("Items"),
//           trailing: IconButton(
//             icon: liked? (Icon(Icons.favorite)) : (Icon(Icons.favorite_border)),
//             onPressed: () {
//               setState(() {
//                 liked = !liked;
//               });
//             },
//           ) ,
//         ),
//       ],
//     );
//   }
// }
//

