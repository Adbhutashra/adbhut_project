// ignore_for_file: must_be_immutable

part of 'k4_bloc.dart';

/// Represents the state of K4 in the application.
class K4State extends Equatable {
  K4State({
    this.employeenameController,
    this.todayController,
    this.dateController,
    this.selectedDropDownValue,
    this.k4ModelObj,
  });

  TextEditingController? employeenameController;

  TextEditingController? todayController;

  TextEditingController? dateController;

  SelectionPopupModel? selectedDropDownValue;

  K4Model? k4ModelObj;

  @override
  List<Object?> get props => [
        employeenameController,
        todayController,
        dateController,
        selectedDropDownValue,
        k4ModelObj,
      ];
  K4State copyWith({
    TextEditingController? employeenameController,
    TextEditingController? todayController,
    TextEditingController? dateController,
    SelectionPopupModel? selectedDropDownValue,
    K4Model? k4ModelObj,
  }) {
    return K4State(
      employeenameController:
          employeenameController ?? this.employeenameController,
      todayController: todayController ?? this.todayController,
      dateController: dateController ?? this.dateController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k4ModelObj: k4ModelObj ?? this.k4ModelObj,
    );
  }
}
