import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contactez-nous',
          style: TextStyle(color: ColorPages.COLOR_BLANC),
        ),
        backgroundColor: ColorPages.COLOR_VERT,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        height: 380,
        color: ColorPages.COLOR_VERT,
        child: Column(
          children: [
            Text("Veuillez nous contacter pour plus de détails",
                style: TextStyle(
                  color: ColorPages.COLOR_BLANC,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              children: [
                Icon(
                  Icons.map,
                  color: ColorPages.COLOR_ROUGE,
                ),
                Text(
                  "Avenue kisangani, n°6,commune de bandalugwa",
                  style: TextStyle(color: ColorPages.COLOR_BLANC),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone, color: ColorPages.COLOR_ROUGE),
                Text("+243 830376004",
                    style: TextStyle(color: ColorPages.COLOR_BLANC))
              ],
            ),
            Row(
              children: [
                Icon(Icons.mail, color: ColorPages.COLOR_ROUGE),
                Text("henandombele2021@gmail.com",
                    style: TextStyle(color: ColorPages.COLOR_BLANC))
              ],
            ),
            Row(
              children: [
                Icon(Icons.timer, color: ColorPages.COLOR_ROUGE),
                Text("Lundi-Samedi de 8h00-20h30",
                    style: TextStyle(color: ColorPages.COLOR_BLANC))
              ],
            ),
            Row(
              children: [
                Container(
                  child: Text("Facebook"),
                ),
                Container(
                  child: Text("Linkdin"),
                ),
                Container(
                  child: Text("Instagram"),
                ),
                Container(
                  child: Text("Mail"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
