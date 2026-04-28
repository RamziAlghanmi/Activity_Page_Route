import 'package:flutter/material.dart';
import 'Product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            if (product.imageUrl != null)
              Center(
                child: Image.asset(
                  product.imageUrl!,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 20),
            Text(
              'الاسم: ${product.name}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'الوصف: ${product.description}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'السعر: ${product.price.toStringAsFixed(2)} ريال',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            SizedBox(height: 30),
            Center(
              child: MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pop(
                    context,
                    'تم الرجوع من تفاصيل المنتج: ${product.name}',
                  );
                },
                child: Text('رجوع مع تأكيد'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
