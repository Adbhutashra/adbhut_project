import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listname_item_model.dart';
import 'package:adbhut_s_application4/presentation/k5_screen/models/k5_model.dart';
part 'k5_event.dart';
part 'k5_state.dart';

/// A bloc that manages the state of a K5 according to the event that is dispatched to it.
class K5Bloc extends Bloc<K5Event, K5State> {
  K5Bloc(K5State initialState) : super(initialState) {
    on<K5InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K5InitialEvent event,
    Emitter<K5State> emit,
  ) async {
    emit(state.copyWith(
        k5ModelObj: state.k5ModelObj?.copyWith(
      listnameItemList: fillListnameItemList(),
    )));
  }

  List<ListnameItemModel> fillListnameItemList() {
    return List.generate(3, (index) => ListnameItemModel());
  }
}
