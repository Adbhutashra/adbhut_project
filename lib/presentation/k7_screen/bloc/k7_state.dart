// ignore_for_file: must_be_immutable

part of 'k7_bloc.dart';

/// Represents the state of K7 in the application.
class K7State extends Equatable {
  K7State({
    this.group2500Controller,
    this.selectedDropDownValue,
    this.k7ModelObj,
  });

  TextEditingController? group2500Controller;

  SelectionPopupModel? selectedDropDownValue;

  K7Model? k7ModelObj;

  @override
  List<Object?> get props => [
        group2500Controller,
        selectedDropDownValue,
        k7ModelObj,
      ];
  K7State copyWith({
    TextEditingController? group2500Controller,
    SelectionPopupModel? selectedDropDownValue,
    K7Model? k7ModelObj,
  }) {
    return K7State(
      group2500Controller: group2500Controller ?? this.group2500Controller,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k7ModelObj: k7ModelObj ?? this.k7ModelObj,
    );
  }
}
