
import 'package:flutter/material.dart';

class RecommendedShoe extends StatefulWidget {
  const RecommendedShoe({super.key});

  @override
  State<RecommendedShoe> createState() => _RecommendedShoeState();
}

class _RecommendedShoeState extends State<RecommendedShoe> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.black,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "New Collection",
                      style: TextStyle(color: Colors.white,fontSize: 30),
                    ),
                    // SizedBox(height: 5,),
                    Text(
                      "Discount 50% for\nthe first transaction",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Card(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("images/shoes/Nike Air Jordan.jfif"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
