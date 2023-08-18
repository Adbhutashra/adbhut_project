// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:adbhut_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [k2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K2Model extends Equatable {
  K2Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  K2Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return K2Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
