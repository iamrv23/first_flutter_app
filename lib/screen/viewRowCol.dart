import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewRowCol extends StatelessWidget {
  const ViewRowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ROWs and COLs demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.share),
                    Text("share")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bluetooth),
                    Text("Bluetooth")
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.whatsapp_sharp),
                    Text("WhatsApp")
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            )
          ],

        ),
      ),
    );
  }
}
