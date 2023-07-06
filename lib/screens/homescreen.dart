import 'package:e_commerce_mobile_app/screens/brandscreen.dart';
import 'package:e_commerce_mobile_app/screens/productdetailsscreen.dart';
import 'package:e_commerce_mobile_app/widgets/recommended_shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          ListView(
            children: [
              Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: 'What are you looking for?',
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
              ),
            ),
              RecommendedShoe(),
              BrandsScreen(),
              ProductDetailsScreen()
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              child: GNav(
                tabBackgroundColor: Colors.white,
                tabs: [
                  GButton(icon: Icons.home, iconColor: Colors.white),
                  GButton(icon: Icons.search, iconColor: Colors.white),
                  GButton(icon: Icons.favorite, iconColor: Colors.white),
                  GButton(icon: Icons.person, iconColor: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
