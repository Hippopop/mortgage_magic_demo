// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannerModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;
  Color get titleColor => throw _privateConstructorUsedError;
  Color get subTitleColor => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call(
      {String title,
      String subTitle,
      String imageLink,
      Color titleColor,
      Color subTitleColor,
      Color backgroundColor});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? imageLink = null,
    Object? titleColor = null,
    Object? subTitleColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      subTitleColor: null == subTitleColor
          ? _value.subTitleColor
          : subTitleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subTitle,
      String imageLink,
      Color titleColor,
      Color subTitleColor,
      Color backgroundColor});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? imageLink = null,
    Object? titleColor = null,
    Object? subTitleColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(_$BannerModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      subTitleColor: null == subTitleColor
          ? _value.subTitleColor
          : subTitleColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl(
      {required this.title,
      required this.subTitle,
      required this.imageLink,
      required this.titleColor,
      required this.subTitleColor,
      required this.backgroundColor});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String imageLink;
  @override
  final Color titleColor;
  @override
  final Color subTitleColor;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'BannerModel(title: $title, subTitle: $subTitle, imageLink: $imageLink, titleColor: $titleColor, subTitleColor: $subTitleColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.titleColor, titleColor) ||
                other.titleColor == titleColor) &&
            (identical(other.subTitleColor, subTitleColor) ||
                other.subTitleColor == subTitleColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, imageLink,
      titleColor, subTitleColor, backgroundColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {required final String title,
      required final String subTitle,
      required final String imageLink,
      required final Color titleColor,
      required final Color subTitleColor,
      required final Color backgroundColor}) = _$BannerModelImpl;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get imageLink;
  @override
  Color get titleColor;
  @override
  Color get subTitleColor;
  @override
  Color get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
