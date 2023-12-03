class ItemModel {
  int? number;
  String? name;
  String? dateModified;

  ItemModel({this.number, this.name, this.dateModified});

  ItemModel.fromJson(Map<String, dynamic> json) {
    number = json['id'];
    name = json['name'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = number;
    data['name'] = name;
    data['dateModified'] = dateModified;
    return data;
  }
}
