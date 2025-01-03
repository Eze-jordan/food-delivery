import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final double imageWidth;
  final double imageHeight;

  const Screen2({
    super.key,
    this.imageWidth = 200, // Valeur par défaut pour la largeur
    this.imageHeight = 200, // Valeur par défaut pour la hauteur
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(
            0xFF064635), // Couleur de fond (si l'image ne couvre pas tout)
      ),
      child: Stack(
        children: [
          // Image d'arrière-plan
          Positioned(
            left: 20,
            right: 0,
            top: 0,
            bottom: 400,
            child: Image.asset(
              'assets/img/CCC-removebg-preview.png',
              width: 250, // Largeur personnalisée
              height: 250, // Hauteur personnalisée
              fit: BoxFit.cover, // Ajustement à l'intérieur des dimensions
            ),
          ),
        ],
      ),
    );
  }
}
