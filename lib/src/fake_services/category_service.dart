import '../fake_date/data.dart';

class CategoryService {
  Future<List<Category>> fetchAll() {
    return Future.delayed(Duration(milliseconds: 500), () => categories);
  }
}
