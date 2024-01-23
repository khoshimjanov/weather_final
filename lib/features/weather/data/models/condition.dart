class ConditionModel {
  final String text;

  ConditionModel({required this.text});

  factory ConditionModel.fromJson(Map<String, dynamic> json) {
    return ConditionModel(text: json['text']);
  }
}
