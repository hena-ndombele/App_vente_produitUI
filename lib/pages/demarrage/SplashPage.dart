import 'package:flutter/material.dart';
import 'package:zigida_app/pages/demarrage/HomePage.dart';

import '../../utils/ColorPages.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
   void initState() {
     super.initState();
     _initializeData();
  }

  void _initializeData() {
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.push(
          context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPages.COLOR_VERT,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo1.png",
                width: 500,
                height: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}