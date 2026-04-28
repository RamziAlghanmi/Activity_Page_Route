import 'package:flutter/material.dart';

import 'Product.dart';
import 'ProductDetailScreen.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<Product> products = [
    Product(
      name: 'هاتف ذكي',
      description: 'أحدث إصدار بذاكرة 128GB',
      price: 1999.0,
      imageUrl: 'images/img12.jpeg',
    ),
    Product(
      name: 'حاسوب محمول',
      description: 'معالج i7، رام 16GB',
      price: 4500.0,
      imageUrl: 'images/img6.jpeg',
    ),
    Product(
      name: 'سماعات لاسلكية',
      description: 'عازل للضوء، بطارية 20 ساعة',
      price: 250.0,
      imageUrl: 'images/img8.jpeg',
    ),
    Product(
      name: 'سماعة أذن لاسلكية',
      description: '   مريحة للإستماع جداً جداً ',
      price: 100.0,
      imageUrl: 'images/img7.jpeg',
    ),
    Product(
      name: ' لاقط شبكة  ',
      description: '  لاقط قوي لجلب اشبكة   ',
      price: 200.0,
      imageUrl: 'images/img10.jpeg',
    ),
    Product(
      name: ' راوتر ',
      description: ' راوتر قوي  ',
      price: 500.0,
      imageUrl: 'images/img9.jpeg',
    ),
    Product(
      name: ' سلة مقاضي  ',
      description: ' أنيقة ورهيبة    ',
      price: 50.0,
      imageUrl: 'images/img1.jpeg',
    ),
  ];

  void _showReturnMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _navigateToProductDetail(Product product) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );

    if (result != null && result is String) {
      _showReturnMessage(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'قائمة المنتجات',
            style: TextStyle(fontSize: 30, fontWeight: .bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: product.imageUrl != null
                ? Image.asset(
                    product.imageUrl!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  )
                : Icon(Icons.image_not_supported, size: 50),
            title: Text(product.name),
            subtitle: Text('${product.price.toStringAsFixed(2)} ريال'),
            onTap: () => _navigateToProductDetail(product),
          );
        },
      ),
    );
  }
}
