import 'package:flutter/material.dart';

class ViewPic extends StatelessWidget {
  const ViewPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: AssetImage("images/spiderman.png"),),
    );
  }
}
