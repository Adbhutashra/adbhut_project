// ignore_for_file: must_be_immutable

part of 'addEmployee_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddEmployeeEvent extends Equatable {}

/// Event that is dispatched when the K1 widget is first created.
class AddEmployeeInitialEvent extends AddEmployeeEvent {
  @override
  List<Object?> get props => [];
}
class AddEmployeeListEvent {

final String name;
  final String role;
  final String date;

  AddEmployeeListEvent(this.name, this.role, this.date);
}

///event for dropdown selection
class ChangeDropDownEvent extends AddEmployeeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
