import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Bdetail extends StatefulWidget {
  const Bdetail({super.key});

  @override
  State<Bdetail> createState() => _BdetailState();
}

class _BdetailState extends State<Bdetail> {
  int quantity = 1; // Variable pour gérer la quantité du burger

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF064635),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              children: [
                // Icone de retour
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFDFDEDE),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 17,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Spacer(),
                // Section Place et Text
                const Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Color(0xFFFFFFFF),
                      size: 23,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "California, US",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Color(0xFFFFFFFF),
                      size: 25,
                    ),
                  ],
                ),
                const Spacer(),
                // Image en cercle
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFDFDEDE),
                  ),
                  child: Icon(MdiIcons.dotsHorizontal,
                      color: Colors.black, size: 25),
                ),
              ],
            ),
          ),
          const SizedBox(height: 70),
          // Stack pour superposer l'image au-dessus du container
          Stack(
            children: [
              // Container personnalisé avec un clipper
              ClipPath(
                clipper: CustomContainerClipper(),
                child: Container(
                  height: 790,
                  width: 450,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 390, left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xfff59e0b),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    if (quantity > 1) quantity--;
                                  });
                                },
                              ),
                              const Spacer(),
                              Text(
                                quantity.toString().padLeft(2,
                                    '0'), // Ajoute un zéro à gauche si nécessaire
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.add_circle_sharp,
                                    color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The Big Bit', // Nom du burger
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      IconsaxPlusBold.location,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Luis(V.I.P)', // Description du burger
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              "\$${(8.00 * quantity).toStringAsFixed(2)}", // Prix du burger
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: const Color(0xFFC1C0C0)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xfff59e0b),
                                  ),
                                  Text('4.7', style: TextStyle()),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: const Color(0xFFC1C0C0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    MdiIcons.fire,
                                    color: const Color(0xfff59e0b),
                                  ),
                                  const Text('150 Kcal', style: TextStyle()),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: const Color(0xFFC1C0C0)),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.delivery_dining,
                                    color: Color(0xfff59e0b),
                                  ),
                                  Text('5-10 min', style: TextStyle()),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Descriptions',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'The Big Bite" is a bold burger featuring a perfectly grilled beef patty, melted cheese, fresh veggies, and a spicy  sauce. A satisfying, flavor-packed meal in every bite...',
                                  ),
                                  TextSpan(
                                    text: ' Read more',
                                    style: TextStyle(color: Color(0xfff59e0b)),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: const Icon(
                                    IconsaxPlusBold.bag_happy,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 70,
                                  width: 280,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xfff59e0b),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Buy Now',
                                      style: TextStyle(
                                          color: Color(0xC9FFFFFF),
                                          fontSize: 20),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Image superposée, une partie dedans, une partie dehors
              Positioned(
                left: 0, // Ajuster la largeur pour faire sortir l'image
                top: 0,
                right: 0,
                child: Container(
                  height: 400,
                  width: 300, // Adjust width to make image stick out
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/burger2.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// CustomClipper pour créer la forme souhaitée
class CustomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Point de départ en haut à gauche
    path.moveTo(0, size.height * 0.1);

    // Courbe remontant légèrement vers la droite
    path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.20, // Point de contrôle 2
        size.width,
        size.height * 0.5 // Point de fin
        );

    // Fermeture de la forme
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
