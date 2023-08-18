import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k6_screen/models/k6_model.dart';
part 'k6_event.dart';
part 'k6_state.dart';

/// A bloc that manages the state of a K6 according to the event that is dispatched to it.
class K6Bloc extends Bloc<K6Event, K6State> {
  K6Bloc(K6State initialState) : super(initialState) {
    on<K6InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K6State> emit,
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
    K6InitialEvent event,
    Emitter<K6State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
    ));
    emit(state.copyWith(
        k6ModelObj: state.k6ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
