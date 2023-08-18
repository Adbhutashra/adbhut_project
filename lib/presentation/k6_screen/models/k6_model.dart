// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:adbhut_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [k6_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K6Model extends Equatable {
  K6Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  K6Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return K6Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
