// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:adbhut_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [k8_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K8Model extends Equatable {
  K8Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  K8Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return K8Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}