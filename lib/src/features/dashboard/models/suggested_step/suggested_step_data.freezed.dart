// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_step_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuggestedStepData {
  int? get stepCount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestedStepDataCopyWith<SuggestedStepData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestedStepDataCopyWith<$Res> {
  factory $SuggestedStepDataCopyWith(
          SuggestedStepData value, $Res Function(SuggestedStepData) then) =
      _$SuggestedStepDataCopyWithImpl<$Res, SuggestedStepData>;
  @useResult
  $Res call(
      {int? stepCount, String title, String description, String iconPath});
}

/// @nodoc
class _$SuggestedStepDataCopyWithImpl<$Res, $Val extends SuggestedStepData>
    implements $SuggestedStepDataCopyWith<$Res> {
  _$SuggestedStepDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepCount = freezed,
    Object? title = null,
    Object? description = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      stepCount: freezed == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestedStepDataImplCopyWith<$Res>
    implements $SuggestedStepDataCopyWith<$Res> {
  factory _$$SuggestedStepDataImplCopyWith(_$SuggestedStepDataImpl value,
          $Res Function(_$SuggestedStepDataImpl) then) =
      __$$SuggestedStepDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? stepCount, String title, String description, String iconPath});
}

/// @nodoc
class __$$SuggestedStepDataImplCopyWithImpl<$Res>
    extends _$SuggestedStepDataCopyWithImpl<$Res, _$SuggestedStepDataImpl>
    implements _$$SuggestedStepDataImplCopyWith<$Res> {
  __$$SuggestedStepDataImplCopyWithImpl(_$SuggestedStepDataImpl _value,
      $Res Function(_$SuggestedStepDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepCount = freezed,
    Object? title = null,
    Object? description = null,
    Object? iconPath = null,
  }) {
    return _then(_$SuggestedStepDataImpl(
      stepCount: freezed == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuggestedStepDataImpl implements _SuggestedStepData {
  const _$SuggestedStepDataImpl(
      {this.stepCount,
      required this.title,
      required this.description,
      required this.iconPath});

  @override
  final int? stepCount;
  @override
  final String title;
  @override
  final String description;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'SuggestedStepData(stepCount: $stepCount, title: $title, description: $description, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestedStepDataImpl &&
            (identical(other.stepCount, stepCount) ||
                other.stepCount == stepCount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stepCount, title, description, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestedStepDataImplCopyWith<_$SuggestedStepDataImpl> get copyWith =>
      __$$SuggestedStepDataImplCopyWithImpl<_$SuggestedStepDataImpl>(
          this, _$identity);
}

abstract class _SuggestedStepData implements SuggestedStepData {
  const factory _SuggestedStepData(
      {final int? stepCount,
      required final String title,
      required final String description,
      required final String iconPath}) = _$SuggestedStepDataImpl;

  @override
  int? get stepCount;
  @override
  String get title;
  @override
  String get description;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$SuggestedStepDataImplCopyWith<_$SuggestedStepDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
