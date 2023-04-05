import 'package:flutter/material.dart';
import 'package:learningdart/sreens/product_detail.dart';
import '../data/dummy_data.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  void btnProdDetail(BuildContext ctx, String id) {
    Navigator.of(ctx).pushNamed(ProductDetail.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        backgroundColor: Color.fromARGB(255, 245, 233, 233),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: 900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Align(
                      child: Text(
                    Dummy_data[index].prodCategory,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
                scrollDirection: Axis.horizontal,
                itemCount: Dummy_data.length,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "All Products",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 560,
              child: GridView.builder(
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                          InkWell(
                            onTap: () =>
                                btnProdDetail(context, product_dummy[index].id),
                            child: Container(
                              padding:
                                  const EdgeInsets.only(right: 30, left: 30),
                              child: Image.network(
                                product_dummy[index].image,
                                height: 100,
                                width: 150,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      product_dummy[index].title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "\$${product_dummy[index].price}",
                      style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                itemCount: product_dummy.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 2,
                    mainAxisExtent: 250),
              ),
            )
          ],
        ),
      ),
    );
  }
}
