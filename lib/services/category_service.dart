import 'package:todo_app/repositories/repository.dart';

import '../models/category.dart';

class CategoryService {
  late Repository _repository;

  CategoryService() {
    _repository = Repository();
  }

  //Create data
  saveCategory(Category cat) async {
    return await _repository.insertData('categories', cat.categoryMap());
  }

  readCategories() async {
    return await _repository.readData('categories');
  }
}
