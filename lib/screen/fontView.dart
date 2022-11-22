import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontView extends StatelessWidget {
  const FontView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('font awosome'.toUpperCase()),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.apple),
          onPressed: () {  },
          iconSize: 100.0,
          color: Colors.black,
        ),
      ),
    );
  }
}

void test() {
  // Center(
  //   child: Icon(
  //     Icons.satellite_alt,
  //     size: 200.0,
  //     color: Colors.deepOrange,
  //
  //   ),
  // ),
}
