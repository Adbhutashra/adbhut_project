// ignore_for_file: must_be_immutable

part of 'k4_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K4 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K4Event extends Equatable {}

/// Event that is dispatched when the K4 widget is first created.
class K4InitialEvent extends K4Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K4Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
