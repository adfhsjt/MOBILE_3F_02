import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_details.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final itemArgs = item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 350,  
                height: 350, 
                child: Hero(
                  tag: 'item_image_${itemArgs.name}',
                  child: itemArgs.image ??
                      Container(
                        color: Colors.grey[200],
                        child: const Icon(
                          Icons.image_not_supported,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                ),
              ),
            ),
            ProductDetails(item: itemArgs),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12.0),
        width: double.infinity,
        color: Colors.grey[200],
        child: const Text(
          'Ahmad Dzul Fadhli Hannan (2341720106)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}