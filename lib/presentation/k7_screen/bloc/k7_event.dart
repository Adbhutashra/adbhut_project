// ignore_for_file: must_be_immutable

part of 'k7_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K7 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K7Event extends Equatable {}

/// Event that is dispatched when the K7 widget is first created.
class K7InitialEvent extends K7Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K7Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
