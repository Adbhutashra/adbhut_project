import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k8_screen/models/k8_model.dart';
part 'k8_event.dart';
part 'k8_state.dart';

/// A bloc that manages the state of a K8 according to the event that is dispatched to it.
class K8Bloc extends Bloc<K8Event, K8State> {
  K8Bloc(K8State initialState) : super(initialState) {
    on<K8InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K8State> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    K8InitialEvent event,
    Emitter<K8State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
    ));
    emit(state.copyWith(
        k8ModelObj: state.k8ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
