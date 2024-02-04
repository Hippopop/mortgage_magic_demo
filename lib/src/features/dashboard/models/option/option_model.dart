import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_model.freezed.dart';

@freezed
class OptionModel with _$OptionModel {
  const factory OptionModel({
    required String title,
    required String iconPath,
    required Color iconColor,
    required Color overlayColor,
    required Color backgroundColor,
  }) = _OptionModel;
}
