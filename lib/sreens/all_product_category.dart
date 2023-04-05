import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class AllProductCategory extends StatelessWidget {
  const AllProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 255, 254),
        elevation: 0,
        leading: IconButton(
            onPressed: () => null,
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Image.asset("assets/images/logo.png", height: 30),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => null,
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
      ),
      body: GridView.builder(
        itemCount: Dummy_data.length,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 2),
        itemBuilder: (context, index) => Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          elevation: 5.0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            child: GridTile(
              child: Image.asset(
                Dummy_data[index].image,
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                subtitle: Text(
                  Dummy_data[index].prodCategory,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
