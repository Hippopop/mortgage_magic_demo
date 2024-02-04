// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryData {
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({String name, String iconPath});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataImplCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$CategoryDataImplCopyWith(
          _$CategoryDataImpl value, $Res Function(_$CategoryDataImpl) then) =
      __$$CategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iconPath});
}

/// @nodoc
class __$$CategoryDataImplCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$CategoryDataImpl>
    implements _$$CategoryDataImplCopyWith<$Res> {
  __$$CategoryDataImplCopyWithImpl(
      _$CategoryDataImpl _value, $Res Function(_$CategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconPath = null,
  }) {
    return _then(_$CategoryDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryDataImpl implements _CategoryData {
  const _$CategoryDataImpl({required this.name, required this.iconPath});

  @override
  final String name;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'CategoryData(name: $name, iconPath: $iconPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, iconPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      __$$CategoryDataImplCopyWithImpl<_$CategoryDataImpl>(this, _$identity);
}

abstract class _CategoryData implements CategoryData {
  const factory _CategoryData(
      {required final String name,
      required final String iconPath}) = _$CategoryDataImpl;

  @override
  String get name;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
