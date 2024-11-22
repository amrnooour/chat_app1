class UserInfoModel {
  String? name;
  String? phone;
  String? email;

  UserInfoModel({required this.name, required this.phone, required this.email});

  UserInfoModel.fromJson(Map<String, dynamic> data) {
    name = data["name"];
    phone = data["number"];
    email = data["email"];
  }
}
