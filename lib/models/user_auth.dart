class UserAuth {
  final String token;
  final String clientId;

  UserAuth({this.token, this.clientId});

  factory UserAuth.fromJson(Map<String, dynamic> json) {
    return UserAuth(
      token: json['token'],
      clientId: json['client_id'],
    );
  }
}
