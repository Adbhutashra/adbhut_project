// ignore_for_file: must_be_immutable

part of 'editEmployee_bloc.dart';

class EditEmployeeState extends Equatable {
  EditEmployeeState({
    this.nameController,
    this.selectedDropDownValue,
    this.editEmployeeModelObj,
  });

  TextEditingController? nameController;

  SelectionPopupModel? selectedDropDownValue;

  EditEmployeeModel? editEmployeeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        selectedDropDownValue,
        editEmployeeModelObj,
      ];
  EditEmployeeState copyWith({
    TextEditingController? nameController,
    SelectionPopupModel? selectedDropDownValue,
    EditEmployeeModel? editEmployeeModelObj,
  }) {
    return EditEmployeeState(
      nameController: nameController ?? this.nameController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
          
      editEmployeeModelObj: editEmployeeModelObj ?? this.editEmployeeModelObj,
    );
  }
}
