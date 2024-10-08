import 'package:flutter/material.dart';
import 'package:konsep_navigasi_dan_rute/models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Hero(
              tag: item.name,
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
                height: 100,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Text('Price: \$${item.price}'),
            Text('Stock: ${item.stock} pcs'),
            Text('Rating: ${item.rating}'),
          ],
        ),
      ),
    );
  }
}
