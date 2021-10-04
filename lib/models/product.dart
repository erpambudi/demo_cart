class Product {
  String id;
  String name;
  int price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });
}

var products = [
  Product(
    id: '11',
    name: 'Sepatu',
    price: 100000,
  ),
  Product(
    id: '22',
    name: 'Baju',
    price: 200000,
  ),
  Product(
    id: '33',
    name: 'Sandal',
    price: 300000,
  ),
];
