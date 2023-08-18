// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:adbhut_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [k1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K1Model extends Equatable {
  K1Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  K1Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return K1Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
