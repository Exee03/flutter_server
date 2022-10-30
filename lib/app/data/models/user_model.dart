class User {
  String? username;
  String? email;
  int? age;
  String? gender;
  String? password;
  String? description;

  User(
      {this.username,
      this.email,
      this.age,
      this.gender,
      this.password,
      this.description});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    age = json['age'];
    gender = json['gender'];
    password = json['password'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['age'] = age;
    data['gender'] = gender;
    data['password'] = password;
    data['description'] = description;
    return data;
  }
}
