import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}


class ProductPage extends StatelessWidget{
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xFF1E1E2E),

        appBar: AppBar(
          title: const Text("Shop",
            style:
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.indigo,
        ),

      body: ListView(

        children: const [
          SizedBox(height: 20),
          ProductCard(
            name: "Smartphone",
            subtitle: "Latest model with advanced features",
            price: 999.99,
            image: "https://i.pinimg.com/1200x/f7/5a/8b/f75a8bd80c2cb6efbc75c9396d583bea.jpg",
          ),
          SizedBox(height: 20),
          ProductCard(
            name: "Laptop",
            subtitle: "Powerful performance for work and play",
            price: 1499.99,
            image: "https://i.pinimg.com/736x/97/22/7f/97227f94ad4415049f45d0012abee7ef.jpg",
          ),
        ],
      )

    );
  }
}

class ProductCard extends StatelessWidget{
  final String name;
  final String subtitle;
  final double price;
  final String image;

  const ProductCard({
    super.key,
    required this.name,
    required this.subtitle,
    required this.price,
    required this.image,
});

  @override
  Widget build(BuildContext context){
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
    ),
        child: Column(
          children: [
            Image.network(image),
            const SizedBox(height: 10),
            Text(name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(subtitle,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Text("\$${price.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        )
    );
  }
}