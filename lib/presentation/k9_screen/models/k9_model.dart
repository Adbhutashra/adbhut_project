// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sectionlistcurr_item_model.dart';

/// This class defines the variables used in the [k9_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K9Model extends Equatable {
  K9Model({this.sectionlistcurrItemList = const []});

  List<SectionlistcurrItemModel> sectionlistcurrItemList;

  K9Model copyWith({List<SectionlistcurrItemModel>? sectionlistcurrItemList}) {
    return K9Model(
      sectionlistcurrItemList:
          sectionlistcurrItemList ?? this.sectionlistcurrItemList,
    );
  }

  @override
  List<Object?> get props => [sectionlistcurrItemList];
}
