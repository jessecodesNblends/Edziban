import 'package:edziban/app/domain/entities/home/category.dart';
import 'package:edziban/app/domain/entities/home/product.dart';

/* id = PK */
const List<Category> CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'African',
    color: null,
    imageUrl: 'images/Icon-001.png',
  ),
  Category(
    id: 'c2',
    title: 'European',
    color: null,
    imageUrl: 'images/Icon-002.png',
  ),
  Category(
    id: 'c3',
    title: 'Asian',
    color: null,
    imageUrl: 'images/Icon-003.png',
  ),
  Category(
    id: 'c4',
    title: 'American',
    color: null,
    imageUrl: 'images/Icon-004.png',
  ),
];

/* id = PK
   category = FK
*/
List<Product> allFoods = [
  Product(
    id: 'p1',
    category: 'c3',
    name: 'Tandoori Chicken',
    price: '96.00',
    image: 'images/plate-001.png',
  ),
  Product(
    id: 'p2',
    category: 'c1',
    name: 'Salmon',
    price: '40.00',
    image: 'images/plate-002.png',
  ),
  Product(
    id: 'p3',
    category: 'c4',
    name: 'Rice and meat',
    price: '130.00',
    image: 'images/plate-003.png',
  ),
  Product(
    id: 'p4',
    category: 'c4',
    name: 'Vegan Food',
    price: '400.00',
    image: 'images/plate-007.png',
  ),
  Product(
    id: 'p5',
    category: 'c2',
    name: 'Rich Food',
    price: '1000.00',
    image: 'images/plate-006.png',
  ),
];
