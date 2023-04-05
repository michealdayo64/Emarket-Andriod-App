import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: ListView.builder(
          itemBuilder: (context, index) =>
              (Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(Dummy_data[index].image),
                          fit: BoxFit.fill)),
                  height: 70,
                  width: 110,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Dummy_data[index].prodCategory,
                  style: TextStyle(fontSize: 20),
                )
              ])),
          itemCount: Dummy_data.length,
          scrollDirection: Axis.horizontal,
          itemExtent: 120),
    );
  }
}
