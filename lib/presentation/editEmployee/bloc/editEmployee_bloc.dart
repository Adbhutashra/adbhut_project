import 'package:adbhut_s_application4/presentation/editEmployee/models/editEmployee_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'editEmployee_event.dart';
part 'editEmployee_state.dart';

class EditEmployeeBloc extends Bloc<EditEmployeeEvent, EditEmployeeState> {
  EditEmployeeBloc(EditEmployeeState initialState) : super(initialState) {
    on<EditEmployeeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<EditEmployeeState> emit,
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
    EditEmployeeInitialEvent event,
    Emitter<EditEmployeeState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
    ));
    emit(state.copyWith(
        editEmployeeModelObj: state.editEmployeeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
