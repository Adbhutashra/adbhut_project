// ignore_for_file: must_be_immutable

part of 'editEmployee_bloc.dart';

/// Abstract class for all events that can be dispatched from the

///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EditEmployeeEvent extends Equatable {}

class EditEmployeeInitialEvent extends EditEmployeeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends EditEmployeeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
