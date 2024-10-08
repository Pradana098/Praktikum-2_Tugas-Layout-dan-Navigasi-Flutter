import 'package:flutter/material.dart';
import 'package:konsep_navigasi_dan_rute/models/item.dart';
import 'package:konsep_navigasi_dan_rute/widgets/footer_widget.dart';
import 'package:konsep_navigasi_dan_rute/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Gula',
      price: 5000,
      imageUrl: 'assets/images/gula.jpg',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Garam',
      price: 2000,
      imageUrl: 'assets/images/garam.jpg',
      stock: 15,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item); // Menggunakan ItemCard
                },
              ),
            ),
          ),
          FooterWidget(), // Menambahkan footer di sini
        ],
      ),
    );
  }
}
