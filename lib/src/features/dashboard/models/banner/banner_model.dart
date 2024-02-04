import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    required String title,
    required String subTitle,
    required String imageLink,
    required Color titleColor,
    required Color subTitleColor,
    required Color backgroundColor,
  }) = _BannerModel;
}
