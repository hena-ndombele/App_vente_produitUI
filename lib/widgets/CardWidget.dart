import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zigida_app/pages/controllers/ProduitController.dart';

import '../utils/ColorPages.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return  Container(

      height: 280,
      width: double.infinity,
      child: ListView.builder(

        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          margin: EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Image.asset("images/image1.jpg"),

                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tomate Fresh",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text("1KG",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Text("6000 FC",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle,
                              color: ColorPages.COLOR_VERT,
                              size: 35,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
