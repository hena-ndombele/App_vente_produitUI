import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:zigida_app/utils/ColorPages.dart';

class AjouterPanierWidget extends StatelessWidget {
  const AjouterPanierWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color:Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Apple Store',
                  style: TextStyle(color: Colors.red)
                ),
                const Gap(8),
                Text(
                  'Find the Apple product and accessories you’re looking for',
                    style: TextStyle(color: Colors.red)
                ),
                const Gap(4),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Text('Shop new year'))
              ],
            ),
          ),
        ),
        Image.asset('assets/general/landing.png'),
      ]),
    );
  }
}
