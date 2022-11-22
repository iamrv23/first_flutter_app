import 'package:flutter/material.dart';

class ContView extends StatelessWidget {
  const ContView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 250.0,
          width: 250.0,
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(100.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueGrey, width: 5.0),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 7.0,
                spreadRadius: 3.0,
                offset: Offset(2,4)
              )
            ],
            image: DecorationImage(image: AssetImage('images/eg.png'))
            ),
    //       child: Text(
    //   'NIIRNCD',
    //   style: TextStyle(fontSize: 20.0, color: Colors.white),
    // ),
        ));
  }
}
