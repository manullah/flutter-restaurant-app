class ReviewModel {
  String name;
  String review;
  String date;

  ReviewModel({
    required this.name,
    required this.review,
    required this.date,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['review'] = review;
    data['date'] = date;

    return data;
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    if (json.isEmpty) return ReviewModel.empty();

    return ReviewModel(
      name: json['name'] ?? '',
      review: json['review'] ?? '',
      date: json['date'] ?? '',
    );
  }

  // -- Empty state
  static ReviewModel empty() => ReviewModel(
        name: '',
        review: '',
        date: '',
      );
}
