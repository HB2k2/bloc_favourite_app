import 'package:equatable/equatable.dart';

class FavouriteItemModel extends Equatable {
  final String id;
  final String value;
  final bool isDeleted;
  final bool isFavourite;

  const FavouriteItemModel({
    required this.id,
    required this.value,
    this.isDeleted = false,
    this.isFavourite = false,
  });

  FavouriteItemModel copyWith(
      {String? id, String? value, bool? isDeleted, bool? isFavourite}) {
    return FavouriteItemModel(
      id: id ?? this.id,
      value: value ?? this.value,
      isDeleted: isDeleted ?? this.isDeleted,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  @override
  List<Object?> get props => [id, value, isDeleted, isFavourite];
}
