import 'package:flutter/cupertino.dart';
import 'package:my_first_flutter_project/models/product.dart';

class Display extends ChangeNotifier {

  /*

  제품을 등록하면 "products in use".
  상세 정보 page에서 저장소 버튼을 누르면 "products in archive"가 됨. 즉, 저장소로 이동.

   */

  // products in use
  final List<Product> _use = [

    Product(
        name: "Essenza Mini C30 White",
        imagePath: 'assets/images/mini_C30_white_coffee_machine.jpeg',
        date: DateTime.parse('2017-07-01'),
        certification: 'KC: SW07642-17001,MSIP-REM-FL2-C30',
        origin: 'Switzerland',
        manufacturer: 'FLEXTRONICS LLC/업체미제공',
        num: '080-734-1111'
    ),

    Product(
        name: "Galaxy S24 Ultra",
        imagePath: 'assets/images/Galaxy-S24-Ultra.png',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),

    Product(
      name: "Google Nest Audio",
      imagePath: 'assets/images/google_nest_audio.jpeg',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),

    Product(
      name: "Lg gram pro",
      imagePath: 'assets/images/Lg_gram_pro_30.6.png',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),
  ];

  // products in archive
  final List<Product> _archive = [

    Product(
        name: "LG Refrigerator",
        imagePath: 'assets/images/LG_dios_object_collection_refrigerator.png',
        date: DateTime.parse('2023-02-10'),
        certification: 'EPD international certification',
        origin: 'Korea',
        manufacturer: 'LG Electronics Co., Ltd',
        num: '1544-77777'
    ),

    Product(
      name: "Pixel 8",
      imagePath: 'assets/images/google_pixel_8_mint.png',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),

    Product(
      name: "cube design power strip",
      imagePath: 'assets/images/power_bar_cube_gray.png',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),

    Product(
      name: "WH-CH720N",
      imagePath: 'assets/images/sony_headphone_white.png',
        date: DateTime.parse('2024-02-25'),
        certification: 'certification',
        origin: 'origin',
        manufacturer: 'manufacturer',
        num: 'contact number'
    ),
  ];

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