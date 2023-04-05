import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = "/product-detail";
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = WidgetsBinding.instance.window.physicalSize;
    //double width = size.width;
    //double height = size.height;

    //print("width: ${width}");
    //print("height: ${height}");

    //final prodId = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 210, 205, 205),
        leading: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Image.asset("assets/images/product-3.jpg"),
            Container(
              padding: EdgeInsets.all(20),
              height: 448,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          "Organic",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 30.0,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("-", style: TextStyle(fontSize: 20)),
                            Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              width: 30,
                              height: double.infinity,
                              child: Text(
                                "2",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text("+", style: TextStyle(fontSize: 20))
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "\$27.67",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj dhdhhd  jshshshs djdjd dhdhhdd ddhdh dndjjdj gggg hggggbgg",
                      style: TextStyle(height: 1.5),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Related Items",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 200.0,
                          height: 100.0,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 210, 205, 205)),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/shutterstock_387192040_1_1200x1200.webp",
                                height: 50.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Banana",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text("\s50.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 200.0,
                          height: 100.0,
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 210, 205, 205)),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/shutterstock_387192040_1_1200x1200.webp",
                                height: 50.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Banana",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text("\s50.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () => null,
                        child: const Text("Add To cart")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
