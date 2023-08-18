// ignore_for_file: must_be_immutable

part of 'k2_bloc.dart';

/// Represents the state of K2 in the application.
class K2State extends Equatable {
  K2State({
    this.nameController,
    this.startdateController,
    this.dateController,
    this.selectedDropDownValue,
    this.k2ModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? startdateController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  K2Model? k2ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        startdateController,
        dateController,
        selectedDropDownValue,
        k2ModelObj,
      ];
  K2State copyWith({
    TextEditingController? nameController,
    TextEditingController? startdateController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    K2Model? k2ModelObj,
  }) {
    return K2State(
      nameController: nameController ?? this.nameController,
      startdateController: startdateController ?? this.startdateController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k2ModelObj: k2ModelObj ?? this.k2ModelObj,
    );
  }
}
