// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OptionModel {
  String get title => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  Color get iconColor => throw _privateConstructorUsedError;
  Color get overlayColor => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionModelCopyWith<OptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionModelCopyWith<$Res> {
  factory $OptionModelCopyWith(
          OptionModel value, $Res Function(OptionModel) then) =
      _$OptionModelCopyWithImpl<$Res, OptionModel>;
  @useResult
  $Res call(
      {String title,
      String iconPath,
      Color iconColor,
      Color overlayColor,
      Color backgroundColor});
}

/// @nodoc
class _$OptionModelCopyWithImpl<$Res, $Val extends OptionModel>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? iconPath = null,
    Object? iconColor = null,
    Object? overlayColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
      overlayColor: null == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionModelImplCopyWith<$Res>
    implements $OptionModelCopyWith<$Res> {
  factory _$$OptionModelImplCopyWith(
          _$OptionModelImpl value, $Res Function(_$OptionModelImpl) then) =
      __$$OptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String iconPath,
      Color iconColor,
      Color overlayColor,
      Color backgroundColor});
}

/// @nodoc
class __$$OptionModelImplCopyWithImpl<$Res>
    extends _$OptionModelCopyWithImpl<$Res, _$OptionModelImpl>
    implements _$$OptionModelImplCopyWith<$Res> {
  __$$OptionModelImplCopyWithImpl(
      _$OptionModelImpl _value, $Res Function(_$OptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? iconPath = null,
    Object? iconColor = null,
    Object? overlayColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(_$OptionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      iconColor: null == iconColor
          ? _value.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as Color,
      overlayColor: null == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$OptionModelImpl implements _OptionModel {
  const _$OptionModelImpl(
      {required this.title,
      required this.iconPath,
      required this.iconColor,
      required this.overlayColor,
      required this.backgroundColor});

  @override
  final String title;
  @override
  final String iconPath;
  @override
  final Color iconColor;
  @override
  final Color overlayColor;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'OptionModel(title: $title, iconPath: $iconPath, iconColor: $iconColor, overlayColor: $overlayColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, iconPath, iconColor, overlayColor, backgroundColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionModelImplCopyWith<_$OptionModelImpl> get copyWith =>
      __$$OptionModelImplCopyWithImpl<_$OptionModelImpl>(this, _$identity);
}

abstract class _OptionModel implements OptionModel {
  const factory _OptionModel(
      {required final String title,
      required final String iconPath,
      required final Color iconColor,
      required final Color overlayColor,
      required final Color backgroundColor}) = _$OptionModelImpl;

  @override
  String get title;
  @override
  String get iconPath;
  @override
  Color get iconColor;
  @override
  Color get overlayColor;
  @override
  Color get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$OptionModelImplCopyWith<_$OptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
