// ignore_for_file: must_be_immutable

part of 'k3_bloc.dart';

/// Represents the state of K3 in the application.
class K3State extends Equatable {
  K3State({this.k3ModelObj});

  K3Model? k3ModelObj;

  @override
  List<Object?> get props => [
        k3ModelObj,
      ];
  K3State copyWith({K3Model? k3ModelObj}) {
    return K3State(
      k3ModelObj: k3ModelObj ?? this.k3ModelObj,
    );
  }
}
