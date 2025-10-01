import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
    Item(name: 'Indomie Goreng Original', price: 3500, image: Image.asset('images/indomie.png'), stok: 10, rating: 4.5, description: 'Delicious instant noodle'),
    Item(name: 'Egg', price: 3000, stok: 200, image: Image.asset('images/egg.png'), rating: 4.8, description: 'Fresh farm eggs'),
    Item(name: 'Indomilk Chocolate', price: 18000, stok: 50, image: Image.asset('images/indomilk.png'), rating: 4.2, description: 'Nutritious milk'),
    Item(name: 'Sari Roti Tawar', price: 4000, stok: 30, image: Image.asset('images/sari_roti.png'), rating: 4.0, description: 'Whole grain bread'),
    Item(name: 'Blue Band Butter', price: 6000, stok: 20, image: Image.asset('images/butter.png'), rating: 4.3, description: 'Creamy butter'),
    Item(name: 'Kraft Cheddar Cheese', price: 8000, stok: 15, image: Image.asset('images/cheese.png'), rating: 4.6, description: 'Aged cheese'),
    Item(name: 'Chicken Breast Fillet', price: 40000, stok: 25, image: Image.asset('images/chicken.png'), rating: 4.7, description: 'Fresh chicken meat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko BudakPideung'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.7,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(
                  item: item,
                  onTap: () {
                    context.pushNamed('item', extra: item);
                  },
                );
              },
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}