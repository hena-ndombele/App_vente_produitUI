import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';


class DetailWidget extends StatefulWidget {
  const DetailWidget({super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorPages.COLOR_VERT,
        title: Text('Deatil du produit'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket)),
          )
        ],
      ),
body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
      height: 300,
      child: Image.asset("images/image1.jpg"),
    ),
    Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text("Tomate Fresh"),
          Text("Tomate Fresh"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("6000 FC"),
              Container(
                child: Row(children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.do_not_disturb_on,size: 30,)),
                  Text('1',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.add_circle,size: 30)),
                ],),
              ),

            ],
          )
        ],
      )
    )
  ],),
),
    );
  }
}
