
import 'package:spotify/features/models/category.dart';

class CategoryServices {
  getCategories(){
    return <Category>[
      Category(name: 'Top Song', imageUrl: '#')
    ];
  }
}
