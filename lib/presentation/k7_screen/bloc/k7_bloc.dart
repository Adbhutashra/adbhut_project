import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsun_item_model.dart';
import 'package:adbhut_s_application4/presentation/k7_screen/models/k7_model.dart';
part 'k7_event.dart';
part 'k7_state.dart';

/// A bloc that manages the state of a K7 according to the event that is dispatched to it.
class K7Bloc extends Bloc<K7Event, K7State> {
  K7Bloc(K7State initialState) : super(initialState) {
    on<K7InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K7State> emit,
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

  List<ListsunItemModel> fillListsunItemList() {
    return List.generate(7, (index) => ListsunItemModel());
  }

  _onInitialize(
    K7InitialEvent event,
    Emitter<K7State> emit,
  ) async {
    emit(state.copyWith(
      group2500Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        k7ModelObj: state.k7ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      listsunItemList: fillListsunItemList(),
    )));
  }
}
