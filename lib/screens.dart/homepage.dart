import 'package:flutter/material.dart';
import 'package:food_delivery/screens.dart/burger.dart';
import 'package:food_delivery/screens.dart/frite.dart';
import 'package:food_delivery/screens.dart/pizza.dart';
import 'package:food_delivery/screens.dart/poulet.dart';
import 'package:food_delivery/screens.dart/profile_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:iconsax_plus/iconsax_plus.dart'; // Ensure you have this library

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  // Function to update the page when a tab is tapped
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Change page when tab is clicked
  }

  // Function for bottom navigation to change pages
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index); // Change page when bottom tab is clicked
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              children: [
                // Back button
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
                // Location section
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
                // Profile image section
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFDFDEDE),
                  ),
                  child: const Icon(Icons.keyboard_control_sharp,
                      color: Colors.black, size: 25),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Announcement section
          Container(
            height: 180,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF064635),
            ),
            child: Row(
              children: [
                // Text section
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'The Fastest in',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                      const Text(
                        'Food Delivery',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF59E0B),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // "Order Now" button
                      Container(
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Color(0xFFF59E0B),
                        ),
                        child: const Center(
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xAAFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Image section
                SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset('assets/img/5555.png'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Categories section
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Categories as tabs with custom style
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _categoryTab(0, "Burger", 'assets/img/BURGER3.png'),
                  const SizedBox(width: 10),
                  _categoryTab(1, "Pizza", 'assets/img/pizza.png'),
                  const SizedBox(width: 10),
                  _categoryTab(2, "Fries", 'assets/img/frites.png'),
                  const SizedBox(width: 10),
                  _categoryTab(3, "Chicken", 'assets/img/poulet.png'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // PageView to change content based on tab
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                Burger(),
                Pizza(),
                Frite(),
                Poulet(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90, // Height of the bottom navigation bar
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xff064635), // Green background
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff064635),
            currentIndex: _selectedIndex, // Highlight selected item
            onTap: _onItemTapped, // Change the page when an item is tapped
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color(0xfff59e0b),
            unselectedItemColor: const Color(0xFFBEBDBD),
            showSelectedLabels: false, // Hide labels for selected items
            showUnselectedLabels: false, // Hide labels for unselected items
            selectedIconTheme:
                const IconThemeData(size: 35), // Size of the selected icons
            unselectedIconTheme:
                const IconThemeData(size: 30), // Size of the unselected icons
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
                      .none, // Ensures that the container does not get clipped
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
                          -5, // Position the yellow container slightly above the CircleAvatar
                      right: -5, // Position it towards the right
                      child: Container(
                        height: 20, // Height of the small yellow container
                        width: 20, // Width of the small yellow container
                        decoration: const BoxDecoration(
                          color: Color(0xFFF59E0B), // Yellow color
                          shape: BoxShape
                              .circle, // Circle shape for the small container
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
                        builder: (context) => const ProfileScreen()));
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

  // Method to create category tabs
  Widget _categoryTab(int index, String title, String imagePath) {
    return GestureDetector(
      onTap: () => _onTabTapped(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFAFB1B0)),
          color:
              _selectedIndex == index ? const Color(0xff064635) : Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Image.asset(
                imagePath,
                height: 20,
                width: 20,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: _selectedIndex == index
                    ? Colors.white
                    : const Color(0XFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
