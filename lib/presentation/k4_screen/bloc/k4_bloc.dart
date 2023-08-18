import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k4_screen/models/k4_model.dart';
part 'k4_event.dart';
part 'k4_state.dart';

/// A bloc that manages the state of a K4 according to the event that is dispatched to it.
class K4Bloc extends Bloc<K4Event, K4State> {
  K4Bloc(K4State initialState) : super(initialState) {
    on<K4InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K4State> emit,
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
    K4InitialEvent event,
    Emitter<K4State> emit,
  ) async {
    emit(state.copyWith(
      employeenameController: TextEditingController(),
      todayController: TextEditingController(),
      dateController: TextEditingController(),
    ));
    emit(state.copyWith(
        k4ModelObj: state.k4ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
