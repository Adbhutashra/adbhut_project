// ignore_for_file: must_be_immutable

part of 'k1_bloc.dart';

/// Represents the state of K1 in the application.
class K1State extends Equatable {
  K1State({
    this.nameController,
    this.todayController,
    this.dateController,
    this.selectedDropDownValue,
    this.k1ModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? todayController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  K1Model? k1ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        todayController,
        dateController,
        selectedDropDownValue,
        k1ModelObj,
      ];
  K1State copyWith({
    TextEditingController? nameController,
    TextEditingController? todayController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    K1Model? k1ModelObj,
  }) {
    return K1State(
      nameController: nameController ?? this.nameController,
      todayController: todayController ?? this.todayController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k1ModelObj: k1ModelObj ?? this.k1ModelObj,
    );
  }
}
