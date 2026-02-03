
import 'package:flutter/material.dart';

class SlideInfo{
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title,
    this.caption,
    this.imageUrl,
  );
}
final slides = <SlideInfo>[
  SlideInfo('Buscala comida', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Dolor sit amet consectetur.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Saborizan tus momentos con nuestras deliciosas opciones.', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: BouncingScrollPhysics(),
        children: slides.map((slideData) => _Slide(
          title: slideData.title,
          caption: slideData.caption,
          imageUrl: slideData.imageUrl,
        )).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
