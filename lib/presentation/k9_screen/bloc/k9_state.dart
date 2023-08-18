// ignore_for_file: must_be_immutable

part of 'k9_bloc.dart';

/// Represents the state of K9 in the application.
class K9State extends Equatable {
  K9State({this.k9ModelObj});

  K9Model? k9ModelObj;

  @override
  List<Object?> get props => [
        k9ModelObj,
      ];
  K9State copyWith({K9Model? k9ModelObj}) {
    return K9State(
      k9ModelObj: k9ModelObj ?? this.k9ModelObj,
    );
  }
}
