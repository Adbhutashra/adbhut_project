// ignore_for_file: must_be_immutable

part of 'k6_bloc.dart';

/// Represents the state of K6 in the application.
class K6State extends Equatable {
  K6State({
    this.nameController,
    this.selectedDropDownValue,
    this.k6ModelObj,
  });

  TextEditingController? nameController;

  SelectionPopupModel? selectedDropDownValue;

  K6Model? k6ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        selectedDropDownValue,
        k6ModelObj,
      ];
  K6State copyWith({
    TextEditingController? nameController,
    SelectionPopupModel? selectedDropDownValue,
    K6Model? k6ModelObj,
  }) {
    return K6State(
      nameController: nameController ?? this.nameController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k6ModelObj: k6ModelObj ?? this.k6ModelObj,
    );
  }
}
