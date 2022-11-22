import 'package:flutter/material.dart';

class ViewStatels extends StatelessWidget {
  const ViewStatels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ViewStatef extends StatefulWidget {
  const ViewStatef({Key? key}) : super(key: key);

  @override
  State<ViewStatef> createState() => _ViewStatefState();
}

class _ViewStatefState extends State<ViewStatef> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("click here"),
        )
      ],
    );
  }
}


