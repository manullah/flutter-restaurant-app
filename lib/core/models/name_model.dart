class NameModel {
  String name;

  NameModel({
    required this.name,
  });

  // -- Empty state
  static NameModel empty() => NameModel(name: '');

  factory NameModel.fromJson(Map<String, dynamic> map) {
    if (map.isEmpty) return NameModel.empty();

    return NameModel(
      name: map['name'] ?? '',
    );
  }
}
