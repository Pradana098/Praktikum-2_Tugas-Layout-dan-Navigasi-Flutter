import 'package:flutter/material.dart';
import 'package:konsep_navigasi_dan_rute/models/item.dart';
import 'package:konsep_navigasi_dan_rute/widgets/footer_widget.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/${itemArgs.name.toLowerCase()}.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemArgs.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Price: \$${itemArgs.price}', 
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Stock: ${itemArgs.stock}', 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), 
                  Text(
                    'Rating: ${itemArgs.rating}', 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 16),
            // Text(
            //   itemArgs.name,
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 8),
            // Text(
            //   'Price: \$ ${itemArgs.price}',
            //   style: TextStyle(fontSize: 20, color: Colors.green),
            // ),
            // SizedBox(height: 8),
            // Text(
            //   'stock: ${itemArgs.stock}',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 8),
            // Text(
            //   'rating: ${itemArgs.rating}',
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 16),
            Spacer(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
