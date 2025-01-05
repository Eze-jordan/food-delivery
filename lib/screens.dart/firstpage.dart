import 'package:flutter/material.dart';
import 'package:food_delivery/screens.dart/homepage.dart';
import 'package:food_delivery/screens.dart/screen1.dart';
import 'package:food_delivery/screens.dart/screen2.dart';
import 'package:food_delivery/screens.dart/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  PageController pageController = PageController();
  int currentPage = 0; // Garder une trace de la page actuelle

  // Texte pour chaque écran
  final List<String> textContent = [
    "Let's get started on your journey\n   to hassle-free food delivery",
    "Discover amazing cuisines from local restaurants!",
    "Enjoy a seamless and fast delivery experience."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                currentPage = page;
              });
            },
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 450), // Ajuste pour une meilleure visibilité
            child: Align(
              alignment: Alignment.topCenter, // Centrer l'arc
              child: ClipPath(
                clipper: OutwardArcClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height *
                      0.55, // Ajuster la hauteur
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5), // Ombre inverse
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 120), // Ajuster la position
                          child: Text(
                            'Food You Love ',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              color: Color(0xFF000000),
                              wordSpacing: -3,
                              height: 1.1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Delivered with care',
                          style: TextStyle(
                            fontSize: 33,
                            color: Color(0xFFF59E0B),
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Affichage du texte basé sur l'index de la page
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            textContent[currentPage],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 19,
                              color: Color(0xFF000000),
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                            child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Centrer les points
                          children: [
                            GestureDetector(
                              onTap: () {
                                pageController.animateToPage(
                                  1,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: SmoothPageIndicator(
                                controller: pageController,
                                count: 3,
                                effect: CustomizableEffect(
                                  activeDotDecoration: DotDecoration(
                                    width: 20.0, // Largeur du trait
                                    height: 9.0, // Hauteur du trait
                                    color: const Color(
                                        0xFFF59E0B), // Couleur du trait actif
                                    borderRadius: BorderRadius.circular(
                                        5), // Arrondir les bords du trait
                                  ),
                                  dotDecoration: DotDecoration(
                                    width: 9.0, // Taille du point inactif
                                    height: 9.0,
                                    color: Colors.orange
                                        .shade100, // Couleur du point inactif
                                    borderRadius: BorderRadius.circular(
                                        10), // Bord du point
                                  ),
                                ),
                                onDotClicked: (index) {
                                  pageController.animateToPage(
                                    index,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const Homepage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF59E0B),
                              fixedSize: const Size(250, 70),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                              ),
                            ),
                            child: const Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Get Started',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              132, 255, 255, 255)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Clipper pour créer un arc orienté vers l'extérieur
class OutwardArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 100); // Ligne horizontale en bas à gauche
    path.quadraticBezierTo(
      size.width / 2,
      0, // Point haut de l'arc
      size.width,
      100,
    ); // Arc orienté vers le bas
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
