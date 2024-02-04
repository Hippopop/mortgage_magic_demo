import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    required String name,
    required String iconPath,
  }) = _CategoryData;
}
