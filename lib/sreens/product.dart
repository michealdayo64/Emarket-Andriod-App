import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Column(
      children: product_dummy
          .map(
            (prod) => Container(
              height: 120,
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Card(
                color: Colors.amber,
                elevation: 5.0,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 300,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Image.network(
                        prod.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(prod.title),
                          Text("#" + prod.price.toString()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add to Cart",
                                style: TextStyle(color: Colors.green),
                              ),
                              IconButton(
                                  onPressed: () => null,
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    ));
  }
}
