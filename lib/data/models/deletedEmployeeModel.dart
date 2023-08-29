class DeletedEmployeeModel {
  late int? id;
  late String name;
  late String role;
  late String startDate;
  late String endDate;

  DeletedEmployeeModel(
      {this.id,
      required this.name,
      required this.role,
      required this.startDate,
      required this.endDate});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'role': role,
      'startDate': startDate,
      'endDate': endDate
    };
  }
}
