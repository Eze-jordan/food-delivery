import 'package:flutter/material.dart';
import 'package:food_delivery/screens.dart/homepage.dart';
import 'package:food_delivery/screens.dart/mess.dart';
import 'package:food_delivery/screens.dart/natif.dart';
import 'package:food_delivery/screens.dart/profile_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  // Pages associées à chaque tab
  final List<Widget> _pages = [
    const Homepage(), // Page d'accueil
    const Mess(), // Page de messages
    const Card(), // Page de panier
    const Natif(), // Page de notifications
    const ProfileScreen(), // Page de profil
  ];

  // Fonction pour changer de page
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: _pages[_selectedIndex], // Affichage de la page sélectionnée
      bottomNavigationBar: Container(
        height: 90, // Hauteur de la barre de navigation
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xff064635), // Fond vert
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff064635),
            currentIndex: _selectedIndex, // Item sélectionné
            onTap: _onItemTapped, // Changer de page
            type: BottomNavigationBarType.fixed,
            selectedItemColor:
                const Color(0xfff59e0b), // Couleur de l'icône sélectionnée
            unselectedItemColor:
                const Color(0xFFBEBDBD), // Couleur des icônes non sélectionnées
            showSelectedLabels:
                false, // Cacher les labels des éléments sélectionnés
            showUnselectedLabels:
                false, // Cacher les labels des éléments non sélectionnés
            selectedIconTheme: const IconThemeData(
                size: 35), // Taille des icônes sélectionnées
            unselectedIconTheme: const IconThemeData(
                size: 30), // Taille des icônes non sélectionnées
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Iconsax.home_11),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(IconsaxPlusBold.message),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFF3F3F3),
                      radius: 25,
                      child: Icon(
                        IconsaxPlusBold.bag_happy,
                        color: Color(0xfff59e0b),
                        size: 30,
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: -5,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF59E0B),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(IconsaxPlusBold.notification),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                  child: const Icon(Icons.person),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
