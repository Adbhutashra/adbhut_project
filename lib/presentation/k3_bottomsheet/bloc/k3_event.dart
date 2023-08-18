// ignore_for_file: must_be_immutable

part of 'k3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K3Event extends Equatable {}

/// Event that is dispatched when the K3 widget is first created.
class K3InitialEvent extends K3Event {
  @override
  List<Object?> get props => [];
}
