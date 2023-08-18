// ignore_for_file: must_be_immutable

part of 'k9_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K9 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K9Event extends Equatable {}

/// Event that is dispatched when the K9 widget is first created.
class K9InitialEvent extends K9Event {
  @override
  List<Object?> get props => [];
}
