class UserModel {
  final String firstName;
  final String lastName;
  final int day;
  final int month;
  final int year;

  UserModel(
      {required this.firstName,
      required this.lastName,
      required this.day,
      required this.month,
      required this.year});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        firstName: json["first_name"],
        lastName: json["last_name"],
        day: json["day"],
        month: json["month"],
        year: json["year"]);
  }
}
