import 'package:adbhut_s_application4/presentation/addEmployee_screen/models/addEmployee_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'addEmployee_event.dart';
part 'addEmployee_state.dart';

/// A bloc that manages the state of a K1 according to the event that is dispatched to it.
class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  AddEmployeeBloc(AddEmployeeState initialState) : super(initialState) {
    on<AddEmployeeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AddEmployeeState> emit,
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
    AddEmployeeInitialEvent event,
    Emitter<AddEmployeeState> emit,
  ) async {
    emit(state.copyWith(
      nameController: TextEditingController(),
      todayController: TextEditingController(),
      dateController: TextEditingController(),
    ));
    emit(state.copyWith(
        addEmployeeModelObj: state.addEmployeeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
