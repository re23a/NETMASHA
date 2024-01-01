class ExperienceModel {
  int? id;
  int? serviceProviderId;
  String? photoUrl;
  String? description;
  int? adultPrice;
  int? childPrice;
  String? title;
  int? latitude;
  int? longitude;

  ExperienceModel(
      {this.id,
      this.serviceProviderId,
      this.photoUrl,
      this.description,
      this.adultPrice,
      this.childPrice,
      this.title,
      this.latitude,
      this.longitude});

  ExperienceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceProviderId = json['service_provider_id'];
    photoUrl = json['photo_url'];
    description = json['description'];
    adultPrice = json['adult_price'];
    childPrice = json['child_price'];
    title = json['title'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_provider_id'] = serviceProviderId;
    data['photo_url'] = photoUrl;
    data['description'] = description;
    data['adult_price'] = adultPrice;
    data['child_price'] = childPrice;
    data['title'] = title;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }
}
