class UserModel {
  bool? success;
  String? message;
  Data? data;

  UserModel({this.success, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? accessToken;
  String? refreshToken;

  Data({this.user, this.accessToken, this.refreshToken});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (user != null) {
      data['user'] = user?.toJson();
    }
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}

class User {
  bool? isEmailVerified;
  bool? isPhoneNoVerified;
  String? picture;
  double? radius;
  int? drives;
  String? sId;
  String? firstName;
  String? lastName;
  String? email;
  String? countryCode;
  String? phoneNumber;
  String? stripeCustomerId;
  String? stripeAccountId;
  String? createdAt;
  String? updatedAt;
  int? iV;
  double? taxPercentage;
  int? gigsPosted;
  int? gigsCompleted;
  double? ratingAsRider;
  double? ratingAsTraveller;
  int? riderRatingCount;
  int? travellerRatingCount;
  String? referralCode;

  User(
      {this.isEmailVerified,
      this.isPhoneNoVerified,
      this.picture,
      this.radius,
      this.drives,
      this.sId,
      this.firstName,
      this.lastName,
      this.email,
      this.countryCode,
      this.phoneNumber,
      this.stripeCustomerId,
      this.stripeAccountId,
      this.createdAt,
      this.updatedAt,
      this.gigsPosted,
      this.gigsCompleted,
      this.ratingAsRider,
      this.ratingAsTraveller,
      this.riderRatingCount,
      this.travellerRatingCount,
      this.taxPercentage,
      this.referralCode,
      this.iV});

  User.fromJson(Map<String?, dynamic> json) {
    isEmailVerified = json['isEmailVerified'];
    isPhoneNoVerified = json['isPhoneNoVerified'];
    picture = json['picture'];
    radius = double.parse(json['radius'].toString());

    ratingAsRider = double.parse(json['ratingAsRider'].toString());
    ratingAsTraveller = double.parse(json['ratingAsTraveller'].toString());
    taxPercentage = double.parse(json['taxPercentage'].toString());
    gigsPosted = json['gigsPosted'];
    gigsCompleted = json['gigsCompleted'];
    riderRatingCount = json['riderRatingCount'];
    travellerRatingCount = json['travellerRatingCount'];

    referralCode = json['referralCode'];
    drives = json['drives'];
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    countryCode = json['countryCode'];
    stripeCustomerId = json['stripeCustomerId'];
    stripeAccountId = json['stripeAccountId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = {};
    data['isEmailVerified'] = isEmailVerified;
    data['isPhoneNoVerified'] = isPhoneNoVerified;
    data['picture'] = picture;
    data['radius'] = radius;
    data['drives'] = drives;
    data['_id'] = sId;
    data['gigsPosted'] = gigsPosted;
    data['gigsCompleted'] = gigsCompleted;
    data['ratingAsRider'] = ratingAsRider;
    data['ratingAsTraveller'] = ratingAsTraveller;
    data['riderRatingCount'] = riderRatingCount;
    data['travellerRatingCount'] = travellerRatingCount;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['referralCode'] = referralCode;
    data['phoneNumber'] = phoneNumber;
    data['countryCode'] = countryCode;
    data['stripeCustomerId'] = stripeCustomerId;
    data['stripeAccountId'] = stripeAccountId;
    data['taxPercentage'] = taxPercentage;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
