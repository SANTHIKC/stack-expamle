import 'package:flutter/material.dart';

class StackOverfloww extends StatefulWidget {
  const StackOverfloww({Key? key}) : super(key: key);

  @override
  State<StackOverfloww> createState() => _StackOverflowwState();
}

class _StackOverflowwState extends State<StackOverfloww> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80,
        width: 90,
        child: Stack(
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.redAccent),
                  child: Icon(Icons.groups),
                ),

            Align(

                alignment: Alignment.bottomRight,
                child: Icon(Icons.add_circle_outline))
          ],
        ),
      ),
    );
  }
}
