import 'package:flutter/material.dart';
import 'package:learningdart/sreens/all_product.dart';
import 'package:learningdart/sreens/all_product_category.dart';
import 'package:learningdart/sreens/search.dart';
//import './newtext.dart';
import './sreens/category.dart';
import './sreens/product.dart';
import './sreens/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dave = "";
  void answerQuestion() {
    setState(() {
      dave = "Micheal";
    });
    print("Hello");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: Color.fromARGB(255, 210, 205, 205)),
      home: Home(),
      routes: {ProductDetail.routeName: (context) => ProductDetail()},
    );
  }
}

class Home extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home({super.key});

  void categoryPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return AllProductCategory();
    }));
  }

  void allProductPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return AllProduct();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => null,
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          title: Image.asset("assets/images/logo.png", height: 30),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/Increasing-Need-for-Food-Safety-in-Fruits-and-Vegetables-1024x512.jpeg"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Search(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () => categoryPage(context),
                        child: const Text(
                          "View All",
                          style: TextStyle(fontSize: 17, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Category
                  Category(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Products",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      InkWell(
                          onTap: () => allProductPage(context),
                          child: const Text("View All",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.red)))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Products
                  Product()
                ],
              ),
            ),
          ],
        ));
  }
}
