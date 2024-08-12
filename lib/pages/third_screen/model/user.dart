class User{
  final int id;
  final String first_name;
  final String last_name;
  final String email;
  final String avatar;


  User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json["id"] as int, 
      first_name: json["first_name"] as String, 
      last_name: json["last_name"] as String, 
      email: json["email"] as String, 
      avatar: json["avatar"] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id' : id,
    'first_name' : first_name,
    'last_name' : last_name,
    'email' : email,
    'avatar' : avatar, 

  };

  String get full_name => '$first_name $last_name';

  @override
  String toString() {
    return 'User{id: $id, full_name: $full_name, email : $email}';
  }

}