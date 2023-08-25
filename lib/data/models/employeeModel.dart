class EmployeeModel {
  late int? id;
  late String name;
  late String role;
  late String date;

  EmployeeModel({this.id, required this.name,required this.role,required this.date});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'date': date,
    };
  }
}
