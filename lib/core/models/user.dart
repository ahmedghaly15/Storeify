class User {
  final String? id;
  final String? userName;
  final String? email;

  const User({
    this.id,
    this.userName,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
    );
  }
}
