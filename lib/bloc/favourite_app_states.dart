import 'package:bloc_basic/model/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

enum ListStatus { loading, success, failure }

class FavouriteAppStates extends Equatable {
  final ListStatus listStatus;
  final List<FavouriteItemModel> favouriteItemList;

  const FavouriteAppStates({
    this.favouriteItemList = const [],
    this.listStatus = ListStatus.loading,
  });

  FavouriteAppStates copyWith({
    final List<FavouriteItemModel>? favouriteItemList,
    final ListStatus? listStatus,
  }) {
    return FavouriteAppStates(
      favouriteItemList: favouriteItemList ?? this.favouriteItemList,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object?> get props => [favouriteItemList, listStatus];
}
