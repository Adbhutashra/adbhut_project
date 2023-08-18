// ignore_for_file: must_be_immutable

part of 'k5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K5 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K5Event extends Equatable {}

/// Event that is dispatched when the K5 widget is first created.
class K5InitialEvent extends K5Event {
  @override
  List<Object?> get props => [];
}
