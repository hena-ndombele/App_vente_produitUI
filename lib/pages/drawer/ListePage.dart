import 'package:flutter/material.dart';
import 'package:zigida_app/utils/ColorPages.dart';

class ListePage extends StatefulWidget {
  const ListePage({super.key});

  @override
  State<ListePage> createState() => _ListePageState();
}

class _ListePageState extends State<ListePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home_filled,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Visiter le site '),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.dashboard,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Marchandises'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.rate_review,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Rapports'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.monetization_on,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Dépenses'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2,
            color: ColorPages.COLOR_VERT,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.person_remove,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Fournisseurs'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  Icons.person_add,
                  size: 20,
                  color: ColorPages.COLOR_VERT,
                ),
                Container(
                  child: ListTile(
                    title: Text('Clients'),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}