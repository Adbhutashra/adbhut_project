import 'package:adbhut_s_application4/presentation/employeeList/models/employeeList_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
part 'employeeList_event.dart';
part 'employeeList_state.dart';

/// A bloc that manages the state of a K0 according to the event that is dispatched to it.
class EmployeeListBloc extends Bloc<EmployeeListEvent, EmployeeListState> {
  EmployeeListBloc(EmployeeListState initialState) : super(initialState) {
    on<EmployeeListInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmployeeListInitialEvent event,
    Emitter<EmployeeListState> emit,
  ) async {}
}
