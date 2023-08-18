import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k2_screen/models/k2_model.dart';
part 'k2_event.dart';
part 'k2_state.dart';

/// A bloc that manages the state of a K2 according to the event that is dispatched to it.
class K2Bloc extends Bloc<K2Event, K2State> {
  K2Bloc(K2State initialState) : super(initialState) {
    on<K2InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K2State> emit,
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
    K2InitialEvent event,
    Emitter<K2State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      startdateController: TextEditingController(),
      dateController: TextEditingController(),
    ));
    emit(state.copyWith(
        k2ModelObj: state.k2ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
