import 'package:flutter/material.dart';
import 'package:our_final_project/screens/PdfScreen.dart';
import 'package:our_final_project/screens/reader_screen.dart';

class MyNavHeader extends StatefulWidget {
  const MyNavHeader({super.key});

  @override
  State<MyNavHeader> createState() => _MyNavHeaderState();
}

class _MyNavHeaderState extends State<MyNavHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 62, 5, 153),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/imageassets/HG.jpg"),
                )),
          ),
          Text(
            "Howlan Group",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text("howlangroup@gmail.com",
              style: TextStyle(color: Colors.green[100])),
        ],
      ),
    );
  }
}
