import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sectionlistcurr_item_model.dart';
import 'package:adbhut_s_application4/presentation/k9_screen/models/k9_model.dart';
part 'k9_event.dart';
part 'k9_state.dart';

/// A bloc that manages the state of a K9 according to the event that is dispatched to it.
class K9Bloc extends Bloc<K9Event, K9State> {
  K9Bloc(K9State initialState) : super(initialState) {
    on<K9InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K9InitialEvent event,
    Emitter<K9State> emit,
  ) async {
    emit(state.copyWith(
        k9ModelObj: state.k9ModelObj?.copyWith(
      sectionlistcurrItemList: fillSectionlistcurrItemList(),
    )));
  }

  List<SectionlistcurrItemModel> fillSectionlistcurrItemList() {
    return [
      SectionlistcurrItemModel(groupBy: "Current employees"),
      SectionlistcurrItemModel(groupBy: "Current employees"),
      SectionlistcurrItemModel(groupBy: "Current employees"),
      SectionlistcurrItemModel(groupBy: "Previous employees"),
      SectionlistcurrItemModel(groupBy: "Previous employees"),
      SectionlistcurrItemModel(groupBy: "Previous employees")
    ];
  }
}
