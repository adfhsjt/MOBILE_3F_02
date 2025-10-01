import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Item item;

  const ProductDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const SizedBox(height: 8),

          // Harga
          Text(
            'Rp ${item.price}',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),

          // Rating dan Stok
          Row(
            children: [
              RatingStars(rating: item.rating),
              const SizedBox(width: 8),
              Text(
                '(${item.rating}) | Stok: ${item.stok}',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 16),

          // Deskripsi
          const Text(
            'Deskripsi Produk',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            item.description.isNotEmpty
                ? item.description
                : 'Tidak ada deskripsi untuk produk ini.',
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.grey[800], fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}