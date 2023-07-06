import 'package:e_commerce_mobile_app/models/models.dart';
import 'package:e_commerce_mobile_app/widgets/productdetailspage.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final Shoe shoe;
  const ProductItem({super.key, required this.shoe});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage(shoe: widget.shoe,)));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "images/shoes/" + widget.shoe.shoe_name + ".jfif"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8, bottom: 8, right: 20),
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.shoe.shoe_name,
              style: TextStyle(color: Colors.black),
            ),
            Text("\$${widget.shoe.shoe_price}",
                style: TextStyle(color: Colors.black))
          ],
        ),
      ),
    );
  }
}
