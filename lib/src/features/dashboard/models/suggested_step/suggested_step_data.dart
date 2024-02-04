import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggested_step_data.freezed.dart';

@freezed
class SuggestedStepData with _$SuggestedStepData {
  const factory SuggestedStepData({
    required String title,
    required String description,
    required String iconPath,
  }) = _SuggestedStepData;
}
