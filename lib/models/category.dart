class Category {
  int id = 1;
  late String name;
  late String description;

  categoryMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['name'] = name;
    mapping['description'] = description;
    return mapping;
  }
}
