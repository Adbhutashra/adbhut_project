import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:adbhut_s_application4/presentation/k3_bottomsheet/models/k3_model.dart';
part 'k3_event.dart';
part 'k3_state.dart';

/// A bloc that manages the state of a K3 according to the event that is dispatched to it.
class K3Bloc extends Bloc<K3Event, K3State> {
  K3Bloc(K3State initialState) : super(initialState) {
    on<K3InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K3InitialEvent event,
    Emitter<K3State> emit,
  ) async {}
}
