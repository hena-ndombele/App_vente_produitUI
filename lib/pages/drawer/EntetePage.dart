import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class EntetePage extends StatefulWidget {
  const EntetePage({super.key});

  @override
  State<EntetePage> createState() => _EntetePageState();
}

class _EntetePageState extends State<EntetePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPages.COLOR_VERT,
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 70,
            child: Image.asset("images/logo1.PNG"),
          ),
        ],
      ),
    );
  }
}
