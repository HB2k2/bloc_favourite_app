import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_basic/bloc/favourite_app_events.dart';
import 'package:bloc_basic/bloc/favourite_app_states.dart';
import 'package:bloc_basic/model/favourite_item_model.dart';
import 'package:bloc_basic/repository/favourite_repository.dart';

class FavouriteBloc extends Bloc<FavouriteAppEvents, FavouriteAppStates> {
  List<FavouriteItemModel> favouriteItemList = [];

  FavouriteRepository favouriteRepository;

  FavouriteBloc(this.favouriteRepository) : super(const FavouriteAppStates()) {
    on<FetchFavouriteList>(fetchList);
  }

  void fetchList(
      FetchFavouriteList event, Emitter<FavouriteAppStates> emit) async {
    favouriteItemList = await favouriteRepository.fetchItem();
    emit(
      state.copyWith(
        favouriteItemList: List.from(favouriteItemList),
        listStatus: ListStatus.success,
      ),
    );
  }
}
