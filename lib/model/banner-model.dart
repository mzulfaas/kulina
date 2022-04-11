class Banner {
  List<Data>? data;
  int? page;
  int? size;
  int? total;

  Banner({this.data, this.page, this.size, this.total});

  Banner.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    page = json['page'];
    size = json['size'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['page'] = page;
    data['size'] = size;
    data['total'] = total;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? pageUrl;
  String? originalPageUrl;
  String? media;
  bool? isActive;
  int? orders;
  int? bannerVariantId;
  Variant? variant;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.name,
        this.pageUrl,
        this.originalPageUrl,
        this.media,
        this.isActive,
        this.orders,
        this.bannerVariantId,
        this.variant,
        this.createdBy,
        this.updatedBy,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pageUrl = json['page_url'];
    originalPageUrl = json['original_page_url'];
    media = json['media'];
    isActive = json['is_active'];
    orders = json['orders'];
    bannerVariantId = json['banner_variant_id'];
    variant =
    json['variant'] != null ? Variant.fromJson(json['variant']) : null;
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['page_url'] = pageUrl;
    data['original_page_url'] = originalPageUrl;
    data['media'] = media;
    data['is_active'] = isActive;
    data['orders'] = orders;
    data['banner_variant_id'] = bannerVariantId;
    if (variant != null) {
      data['variant'] = variant!.toJson();
    }
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Variant {
  int? id;
  String? name;
  String? slug;
  String? createdAt;
  String? updatedAt;

  Variant({this.id, this.name, this.slug, this.createdAt, this.updatedAt});

  Variant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
