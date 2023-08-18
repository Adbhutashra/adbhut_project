// ignore_for_file: must_be_immutable

part of 'k2_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K2 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K2Event extends Equatable {}

/// Event that is dispatched when the K2 widget is first created.
class K2InitialEvent extends K2Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K2Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
