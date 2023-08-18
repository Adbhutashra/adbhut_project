// ignore_for_file: must_be_immutable

part of 'employeeList_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EmployeeList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmployeeListEvent extends Equatable {}

/// Event that is dispatched when the EmployeeList widget is first created.
class EmployeeListInitialEvent extends EmployeeListEvent {
  @override
  List<Object?> get props => [];
}
