import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 4; // Variable pour l'index sélectionné
  final PageController _pageController =
      PageController(); // Pour contrôler le changement de page

  // Fonction pour changer la page lorsqu'un élément du bottom navigation est sélectionné
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Change la page selon l'index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back button section
                Row(
                  children: [
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
                    const Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Color(0xFF000000),
                          size: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "California, US",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Color(0xFF000000),
                          size: 25,
                        ),
                      ],
                    ),
                    const Spacer(),
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
                const SizedBox(height: 20),
                // Profile image and user info
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'assets/img/eze_image-removebg-preview.png'), // Replace with your image path
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'EZE Jordan',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'ezejordan318o@gmail.com',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF59E0B),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fixedSize: const Size(150, 80),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xAFFFFFFF)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // User location and phone number
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                color: Color(0xFFFFFFFF),
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  left: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                )),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.location_on,
                                    size: 17,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                                const Text('California, US'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 60,
                            width: 180,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                color: Color(0xFFFFFFFF),
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  left: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                  right: BorderSide(
                                    color: Color(0xF4D0D5D2),
                                    width: 2,
                                  ),
                                )),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.phone,
                                    size: 17,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                                const Text('+1 (900) 142-9213'),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Settings section
                Container(
                  height: 138,
                  width: 400,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFFF3F3F3),
                      border: Border(
                          top: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          left: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      ListTile(
                        leading: Icon(MdiIcons.faceAgent,
                            color: Colors.black, size: 25),
                        title: const Text('Support'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(Icons.history, color: Color(0xFF064635)),
                        title: Text('Order History'),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(height: 10),
                // Switches for notifications and settings
                Container(
                  height: 260,
                  width: 400,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFFF3F3F3),
                      border: Border(
                          top: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          left: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ),
                          right: BorderSide(
                            color: Color(0xF4D0D5D2),
                            width: 1,
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SwitchListTile(
                          title: Row(
                            children: [
                              Icon(
                                MdiIcons.bellBadge, // Icône avant le texte
                                color: const Color(
                                    0xFF064635), // Couleur de l'icône
                              ),
                              const SizedBox(
                                  width:
                                      10), // Espace entre l'icône et le texte
                              const Text('Push notification'),
                            ],
                          ),
                          value: true,
                          onChanged: (bool value) {},
                          activeColor: const Color(0xFFF59E0B),
                        ),
                        const Divider(),
                        SwitchListTile(
                          title: Row(
                            children: [
                              Icon(
                                MdiIcons.offer, // Icône avant le texte
                                color: const Color(
                                    0xFF064635), // Couleur de l'icône
                              ),
                              const SizedBox(
                                  width:
                                      10), // Espace entre l'icône et le texte
                              const Text('Promotions and Offers'),
                            ],
                          ),
                          value: true,
                          onChanged: (bool value) {},
                          activeColor: const Color(0xFFF59E0B),
                        ),
                        const Divider(),
                        ListTile(
                            leading: Icon(MdiIcons.lockAlertOutline,
                                color: const Color(0xFF064635)),
                            title: const Text('Language Setting'),
                            trailing: const Icon(Icons.arrow_forward)),
                        const Divider(),
                        ListTile(
                          leading: Icon(MdiIcons.logoutVariant,
                              color: const Color(0xFF064635)),
                          title: const Text('Logout'),
                        ),
                      ],
                    ),
                  ),
                ),
                // Switches for notifications and settings

                const SizedBox(height: 20),
                // Logout Button
              ],
            ),
          ),
        ),
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
              currentIndex:
                  _selectedIndex, // Indicateur de l'élément sélectionné
              onTap: _onItemTapped, // Fonction de changement de page
              type: BottomNavigationBarType.fixed,
              selectedItemColor:
                  const Color(0xfff59e0b), // Couleur de l'icône sélectionnée
              unselectedItemColor: const Color(
                  0xFFBEBDBD), // Couleur de l'icône non sélectionnée
              showSelectedLabels:
                  false, // Masquer les labels des éléments sélectionnés
              showUnselectedLabels:
                  false, // Masquer les labels des éléments non sélectionnés
              selectedIconTheme: const IconThemeData(
                  size: 35), // Taille des icônes sélectionnées
              unselectedIconTheme: const IconThemeData(
                  size: 30), // Taille des icônes non sélectionnées
              backgroundColor: const Color(
                  0xff064635), // Assurez-vous que le fond est vert ici aussi
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
                    clipBehavior: Clip
                        .none, // Permet de ne pas découper le petit conteneur
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
                        top:
                            -5, // Positionner le petit cercle jaune légèrement au-dessus
                        right: -5, // Positionner à droite
                        child: Container(
                          height: 20, // Taille du cercle jaune
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF59E0B), // Jaune
                            shape: BoxShape.circle, // Forme du cercle
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ));
                    },
                    child: const Icon(Icons.person),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ));
  }
}
