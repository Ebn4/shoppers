class User {
  int id;
  String name;
  String email;
  String password;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.password,
  });

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        name = json['name'],
        password = json['password'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['name'] = name;
    data['password'] = password;
    return data;
  }  
}
