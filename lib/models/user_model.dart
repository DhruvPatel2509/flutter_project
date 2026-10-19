class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? image;

  UserModel({this.id, this.firstName, this.lastName, this.email, this.image});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    image = json['image'];
  }
}
