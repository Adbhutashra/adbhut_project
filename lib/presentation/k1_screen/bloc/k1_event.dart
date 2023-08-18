// ignore_for_file: must_be_immutable

part of 'k1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K1Event extends Equatable {}

/// Event that is dispatched when the K1 widget is first created.
class K1InitialEvent extends K1Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K1Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
