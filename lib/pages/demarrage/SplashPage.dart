import 'package:flutter/material.dart';
import 'package:zigida_app/pages/demarrage/HomePage.dart';
import 'package:zigida_app/widgets/BottomNavBarWidget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        MaterialPageRoute(builder: (context) => BottomNavBarWidget()),
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
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Row(
                        children: [
                         SpinKitSpinningLines(
                            color: ColorPages.COLOR_BLANC,
                            size: 40,
                          ),
                          Expanded(
                            child: Text('WENZE NA TSHOMBO...',
                                style: TextStyle(
                                    color: ColorPages.COLOR_BLANC,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
