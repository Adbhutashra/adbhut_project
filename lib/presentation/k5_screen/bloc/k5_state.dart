// ignore_for_file: must_be_immutable

part of 'k5_bloc.dart';

/// Represents the state of K5 in the application.
class K5State extends Equatable {
  K5State({this.k5ModelObj});

  K5Model? k5ModelObj;

  @override
  List<Object?> get props => [
        k5ModelObj,
      ];
  K5State copyWith({K5Model? k5ModelObj}) {
    return K5State(
      k5ModelObj: k5ModelObj ?? this.k5ModelObj,
    );
  }
}
