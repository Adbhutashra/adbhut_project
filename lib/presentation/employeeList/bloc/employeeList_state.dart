// ignore_for_file: must_be_immutable

part of 'employeeList_bloc.dart';

/// Represents the state of K0 in the application.
class EmployeeListState extends Equatable {
  EmployeeListState({this.employeeListModelObj});

  EmployeeListModel? employeeListModelObj;

  @override
  List<Object?> get props => [
        employeeListModelObj,
      ];
  EmployeeListState copyWith({EmployeeListModel? employeeListModelObj}) {
    return EmployeeListState(
      employeeListModelObj: employeeListModelObj ?? this.employeeListModelObj,
    );
  }
}
