import 'package:flutter/cupertino.dart';
import 'package:my_first_flutter_project/models/product.dart';

class Display extends ChangeNotifier {

  /*

  제품을 등록하면 "products in use".
  상세 정보 page에서 저장소 버튼을 누르면 "products in archive"가 됨. 즉, 저장소로 이동.

   */

  // products in use
  final List<Product> _use = [
    // product 1
    Product(
        name: "Product 1",
        imagePath: 'assets/images/Galaxy-S24-Ultra.png',
    ),

    // product 2
    Product(
      name: "Product 2",
      imagePath: 'assets/images/google_nest_audio.jpeg',
    ),

    // product 3
    Product(
      name: "Product 3",
      imagePath: 'assets/images/LG_dios_object_collection_refrigerator.png',
    ),

    // product 4
    Product(
      name: "Product 4",
      imagePath: 'assets/images/Lg_gram_pro_30.6.png',
    ),
  ];

  // products in archive
  final List<Product> _archive = [];

  // get list of product in use
  List<Product> get use => _use;

  // get list of product in archive
  List<Product> get archive => _archive;

  // move item to archive
  void moveToArchive(Product item) {
    _archive.add(item);
    _use.remove(item);

    notifyListeners(); //update UI
  }

  // remove item from archive
  void removeFromArchive(Product item) {
    _use.add(item);
    _archive.remove(item);

    notifyListeners();
  }

}