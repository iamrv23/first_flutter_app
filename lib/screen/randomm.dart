import 'dart:math';

import 'package:flutter/material.dart';

class Randomm extends StatelessWidget {
  const Randomm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('random'.toUpperCase()),
      ),
      body: Center(
        child: Text("My random no is : ${getRandom()}"),
      ),
    );

  }
}

int getRandom() {
  return Random().nextInt(100);
}
