import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int _currentIndex = 0;

  final List<String> _imageList = [
    'images/image19.jpg',
    'images/image18.jpg',
    'images/image5.jpg',
    'images/image15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _imageList.map((imagePath) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 150,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 16 / 9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _imageList.map((imagePath) {
            int index = _imageList.indexOf(imagePath);
            return Container(
              height: 8,
              width: 8,
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.grey
                    : Colors.grey.withOpacity(0.5),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
