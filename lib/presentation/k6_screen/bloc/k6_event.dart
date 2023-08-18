// ignore_for_file: must_be_immutable

part of 'k6_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K6 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K6Event extends Equatable {}

/// Event that is dispatched when the K6 widget is first created.
class K6InitialEvent extends K6Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K6Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
