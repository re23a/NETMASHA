class BookingModel {
  int? id;
  String? photoUrl;
  String? description;
  int? adultPrice;
  int? childPrice;
  String? title;

  BookingModel({
    this.id,
    this.photoUrl,
    this.description,
    this.adultPrice,
    this.childPrice,
    this.title,
  });

  BookingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    photoUrl = json['photo_url'];
    description = json['description'];
    adultPrice = json['adult_price'];
    childPrice = json['child_price'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['photo_url'] = photoUrl;
    data['description'] = description;
    data['adult_price'] = adultPrice;
    data['child_price'] = childPrice;
    data['title'] = title;
    return data;
  }
}
