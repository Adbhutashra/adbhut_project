// ignore_for_file: must_be_immutable

part of 'addEmployee_bloc.dart';

/// Represents the state of K1 in the application.
class AddEmployeeState extends Equatable {
  AddEmployeeState({
    this.nameController,
    this.todayController,
    this.roleController,
    this.dateController,
    this.selectedDropDownValue,
    this.addEmployeeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? todayController;

  TextEditingController? roleController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  AddEmployeeModel? addEmployeeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        todayController,
        roleController,
        dateController,
        selectedDropDownValue,
        addEmployeeModelObj,
      ];
  AddEmployeeState copyWith({
    TextEditingController? nameController,
    TextEditingController? todayController,
    TextEditingController? roleController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    AddEmployeeModel? addEmployeeModelObj,
  }) {
    return AddEmployeeState(
      nameController: nameController ?? this.nameController,
      todayController: todayController ?? this.todayController,
      roleController: roleController ?? this.roleController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      addEmployeeModelObj: addEmployeeModelObj ?? this.addEmployeeModelObj,
    );
  }
}
