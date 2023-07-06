import 'package:e_commerce_mobile_app/shoes_data.dart';
import 'package:e_commerce_mobile_app/widgets/productitem.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arial",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "See All",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          SizedBox(height: 5,),
          Wrap(
            children: shoesdata.map((element) {
              return ProductItem(shoe: element,);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
