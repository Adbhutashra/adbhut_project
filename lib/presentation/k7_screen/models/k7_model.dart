// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:adbhut_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listsun_item_model.dart';

/// This class defines the variables used in the [k7_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K7Model extends Equatable {
  K7Model({
    this.dropdownItemList = const [],
    this.listsunItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListsunItemModel> listsunItemList;

  K7Model copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListsunItemModel>? listsunItemList,
  }) {
    return K7Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listsunItemList: listsunItemList ?? this.listsunItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listsunItemList];
}
