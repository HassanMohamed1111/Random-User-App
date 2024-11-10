class UsersModel {
  Map<String , dynamic>name;
  Map<String , dynamic>picture;
  UsersModel({required this.name , required this.picture});
  static List<UsersModel>fromjson(Map<String , dynamic>json)
  {
    return (json['results'] as List)
    .map((item)=>UsersModel(
      name: item['name'],
      picture: item['picture'],
    ))
    .toList();
  }
}