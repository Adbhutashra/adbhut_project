import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k1_screen/models/k1_model.dart';
part 'k1_event.dart';
part 'k1_state.dart';

/// A bloc that manages the state of a K1 according to the event that is dispatched to it.
class K1Bloc extends Bloc<K1Event, K1State> {
  K1Bloc(K1State initialState) : super(initialState) {
    on<K1InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K1State> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Product Designer",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Flutter Developer",
      ),
      SelectionPopupModel(
        id: 3,
        title: "QA Tester",
      ),
      SelectionPopupModel(
        id: 4,
        title: "Product Owner",
      )
    ];
  }

  _onInitialize(
    K1InitialEvent event,
    Emitter<K1State> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      todayController: TextEditingController(),
      dateController: TextEditingController(),
    ));
    emit(state.copyWith(
        k1ModelObj: state.k1ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
