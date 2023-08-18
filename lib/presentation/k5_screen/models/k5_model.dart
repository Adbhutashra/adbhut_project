// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listname_item_model.dart';

/// This class defines the variables used in the [k5_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K5Model extends Equatable {
  K5Model({this.listnameItemList = const []});

  List<ListnameItemModel> listnameItemList;

  K5Model copyWith({List<ListnameItemModel>? listnameItemList}) {
    return K5Model(
      listnameItemList: listnameItemList ?? this.listnameItemList,
    );
  }

  @override
  List<Object?> get props => [listnameItemList];
}
