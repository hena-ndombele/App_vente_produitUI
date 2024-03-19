import 'package:flutter/material.dart';
import 'package:zigida_app/pages/autres/CarouselPage.dart';
import 'package:zigida_app/pages/notification/NotificationPage.dart';
import 'package:zigida_app/utils/ColorPages.dart';
import 'package:zigida_app/utils/Routes.dart';
import 'package:zigida_app/widgets/BottomNavBarWidget.dart';

import '../drawer/EntetePage.dart';
import '../drawer/ListePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: ColorPages.COLOR_VERT,
          automaticallyImplyLeading: false,
          // Désactiver l'affichage automatique de l'icône du menu
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                // Ajoutez le code de votre action pour l'icône du menu
                icon: Icon(Icons.menu, color: ColorPages.COLOR_BLANC),
              ),
              Image.asset(
                'images/logo3.PNG',
                width: 60,
              ),
              // Remplacez 'images/logo3.PNG' par le chemin de votre image
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
                //Navigator.pushNamed(context, Routes.NotificationPage);
              }, // Ajoutez le code de votre action pour l'icône de notification
              icon: Badge(
                  label: Text("6"),
                  child:
                  Icon(Icons.notifications, color: ColorPages.COLOR_BLANC)),
            ),
          ],
        ),
        drawerEdgeDragWidth: 50,
        drawer: Drawer(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [EntetePage(), ListePage()],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                CarouselPage(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              'Nos produits recents',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
                  Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height:150,
                            width:200,
                            child: Image.asset("images/image1.jpg",width: 200)),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_ROUGE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Appel',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Tomate Fresh",style: TextStyle(fontSize: 21),),
                        Text("20.000Fc"),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_VERT,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Whatsapp',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height:150,
                            width:180,
                            child: Image.asset("images/image4.jpg",width: 200)),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_ROUGE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Appel',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Semoule",style: TextStyle(fontSize: 21),),
                        Text("20.000Fc"),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_VERT,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Whatsapp',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height:150,
                            width:200,
                            child: Image.asset("images/image3.jpg",width: 200)),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_ROUGE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Appel',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Aubergine",style: TextStyle(fontSize: 21),),
                        Text("14.000Fc"),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_VERT,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Whatsapp',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height:150,
                            width:200,
                            child: Image.asset("images/image4.jpg",)),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_ROUGE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Appel',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Semoule",style: TextStyle(fontSize: 21),),
                        Text("45.000Fc"),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_VERT,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Whatsapp',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            height:150,
                            width:180,
                            child: Image.asset("images/image1.jpg",width: 200)),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_ROUGE,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Appel',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Tomate Fresh",style: TextStyle(fontSize: 21),),
                        Text("20.000Fc"),
                        Container(
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorPages.COLOR_VERT,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              onPressed: (){}, child: Text('Whatsapp',style: TextStyle(color: ColorPages.COLOR_BLANC),)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
                  ),
                
              ],
            
          ),
        )
      //bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
