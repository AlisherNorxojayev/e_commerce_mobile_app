import 'package:e_commerce_mobile_app/models/models.dart';
import 'package:e_commerce_mobile_app/shoes_data.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final Shoe shoe;
  const ProductDetailsPage({super.key, required this.shoe});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ListView(
            children: [
              Container(
                height: 350,
                child: Center(
                  child: Image.asset(
                      "images/shoes/" + widget.shoe.shoe_name + ".jfif"),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Container(
                                height: 80,
                                width: 80,
                                child: Image.asset("images/shoes/" +
                                    shoesdata[index].shoe_name +
                                    ".jfif"),
                              ),
                            ),
                          );
                        },
                        itemCount: shoesdata.length,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Road Running Shoes",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("4.5")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.shoe.shoe_name +
                                    "\n\$${widget.shoe.shoe_price}",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Descriptions",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Wrap(
                            children: [Text(widget.shoe.descriptions)],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "BUY NOW",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
