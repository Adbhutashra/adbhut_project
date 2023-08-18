// ignore_for_file: must_be_immutable

part of 'k8_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K8 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K8Event extends Equatable {}

/// Event that is dispatched when the K8 widget is first created.
class K8InitialEvent extends K8Event {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends K8Event {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
