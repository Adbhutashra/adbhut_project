// ignore_for_file: must_be_immutable

part of 'k8_bloc.dart';

/// Represents the state of K8 in the application.
class K8State extends Equatable {
  K8State({
    this.nameController,
    this.selectedDropDownValue,
    this.k8ModelObj,
  });

  TextEditingController? nameController;

  SelectionPopupModel? selectedDropDownValue;

  K8Model? k8ModelObj;

  @override
  List<Object?> get props => [
        nameController,
        selectedDropDownValue,
        k8ModelObj,
      ];
  K8State copyWith({
    TextEditingController? nameController,
    SelectionPopupModel? selectedDropDownValue,
    K8Model? k8ModelObj,
  }) {
    return K8State(
      nameController: nameController ?? this.nameController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k8ModelObj: k8ModelObj ?? this.k8ModelObj,
    );
  }
}
