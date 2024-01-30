// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blood_sugar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BloodSugarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodSugarEventCopyWith<$Res> {
  factory $BloodSugarEventCopyWith(
          BloodSugarEvent value, $Res Function(BloodSugarEvent) then) =
      _$BloodSugarEventCopyWithImpl<$Res, BloodSugarEvent>;
}

/// @nodoc
class _$BloodSugarEventCopyWithImpl<$Res, $Val extends BloodSugarEvent>
    implements $BloodSugarEventCopyWith<$Res> {
  _$BloodSugarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange value});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BloodSugarEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$StartedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.value);

  @override
  final DateTimeRange value;

  @override
  String toString() {
    return 'BloodSugarEvent.started(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) {
    return started(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) {
    return started?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BloodSugarEvent {
  const factory _Started(final DateTimeRange value) = _$StartedImpl;

  DateTimeRange get value;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BloodSugarModel model});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$BloodSugarEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as BloodSugarModel,
    ));
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl(this.model);

  @override
  final BloodSugarModel model;

  @override
  String toString() {
    return 'BloodSugarEvent.add(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) {
    return add(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) {
    return add?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements BloodSugarEvent {
  const factory _Add(final BloodSugarModel model) = _$AddImpl;

  BloodSugarModel get model;
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeImplCopyWith<$Res> {
  factory _$$ChangeImplCopyWith(
          _$ChangeImpl value, $Res Function(_$ChangeImpl) then) =
      __$$ChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BloodSugarModel newModel});
}

/// @nodoc
class __$$ChangeImplCopyWithImpl<$Res>
    extends _$BloodSugarEventCopyWithImpl<$Res, _$ChangeImpl>
    implements _$$ChangeImplCopyWith<$Res> {
  __$$ChangeImplCopyWithImpl(
      _$ChangeImpl _value, $Res Function(_$ChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newModel = null,
  }) {
    return _then(_$ChangeImpl(
      null == newModel
          ? _value.newModel
          : newModel // ignore: cast_nullable_to_non_nullable
              as BloodSugarModel,
    ));
  }
}

/// @nodoc

class _$ChangeImpl implements _Change {
  const _$ChangeImpl(this.newModel);

  @override
  final BloodSugarModel newModel;

  @override
  String toString() {
    return 'BloodSugarEvent.change(newModel: $newModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImpl &&
            (identical(other.newModel, newModel) ||
                other.newModel == newModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      __$$ChangeImplCopyWithImpl<_$ChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) {
    return change(newModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) {
    return change?.call(newModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(newModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements BloodSugarEvent {
  const factory _Change(final BloodSugarModel newModel) = _$ChangeImpl;

  BloodSugarModel get newModel;
  @JsonKey(ignore: true)
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$BloodSugarEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'BloodSugarEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements BloodSugarEvent {
  const factory _Delete() = _$DeleteImpl;
}

/// @nodoc
abstract class _$$OnChangeTypeImplCopyWith<$Res> {
  factory _$$OnChangeTypeImplCopyWith(
          _$OnChangeTypeImpl value, $Res Function(_$OnChangeTypeImpl) then) =
      __$$OnChangeTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BloodSugarTypeState value});
}

/// @nodoc
class __$$OnChangeTypeImplCopyWithImpl<$Res>
    extends _$BloodSugarEventCopyWithImpl<$Res, _$OnChangeTypeImpl>
    implements _$$OnChangeTypeImplCopyWith<$Res> {
  __$$OnChangeTypeImplCopyWithImpl(
      _$OnChangeTypeImpl _value, $Res Function(_$OnChangeTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnChangeTypeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BloodSugarTypeState,
    ));
  }
}

/// @nodoc

class _$OnChangeTypeImpl implements _OnChangeType {
  const _$OnChangeTypeImpl(this.value);

  @override
  final BloodSugarTypeState value;

  @override
  String toString() {
    return 'BloodSugarEvent.onChangeType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeTypeImplCopyWith<_$OnChangeTypeImpl> get copyWith =>
      __$$OnChangeTypeImplCopyWithImpl<_$OnChangeTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTimeRange value) started,
    required TResult Function(BloodSugarModel model) add,
    required TResult Function(BloodSugarModel newModel) change,
    required TResult Function() delete,
    required TResult Function(BloodSugarTypeState value) onChangeType,
  }) {
    return onChangeType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTimeRange value)? started,
    TResult? Function(BloodSugarModel model)? add,
    TResult? Function(BloodSugarModel newModel)? change,
    TResult? Function()? delete,
    TResult? Function(BloodSugarTypeState value)? onChangeType,
  }) {
    return onChangeType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTimeRange value)? started,
    TResult Function(BloodSugarModel model)? add,
    TResult Function(BloodSugarModel newModel)? change,
    TResult Function()? delete,
    TResult Function(BloodSugarTypeState value)? onChangeType,
    required TResult orElse(),
  }) {
    if (onChangeType != null) {
      return onChangeType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Add value) add,
    required TResult Function(_Change value) change,
    required TResult Function(_Delete value) delete,
    required TResult Function(_OnChangeType value) onChangeType,
  }) {
    return onChangeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Add value)? add,
    TResult? Function(_Change value)? change,
    TResult? Function(_Delete value)? delete,
    TResult? Function(_OnChangeType value)? onChangeType,
  }) {
    return onChangeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Add value)? add,
    TResult Function(_Change value)? change,
    TResult Function(_Delete value)? delete,
    TResult Function(_OnChangeType value)? onChangeType,
    required TResult orElse(),
  }) {
    if (onChangeType != null) {
      return onChangeType(this);
    }
    return orElse();
  }
}

abstract class _OnChangeType implements BloodSugarEvent {
  const factory _OnChangeType(final BloodSugarTypeState value) =
      _$OnChangeTypeImpl;

  BloodSugarTypeState get value;
  @JsonKey(ignore: true)
  _$$OnChangeTypeImplCopyWith<_$OnChangeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BloodSugarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodSugarStateCopyWith<$Res> {
  factory $BloodSugarStateCopyWith(
          BloodSugarState value, $Res Function(BloodSugarState) then) =
      _$BloodSugarStateCopyWithImpl<$Res, BloodSugarState>;
}

/// @nodoc
class _$BloodSugarStateCopyWithImpl<$Res, $Val extends BloodSugarState>
    implements $BloodSugarStateCopyWith<$Res> {
  _$BloodSugarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BloodSugarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BloodSugarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'BloodSugarState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements BloodSugarState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BloodSugarState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BloodSugarState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'BloodSugarState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BloodSugarState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'BloodSugarState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BloodSugarState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddSuccessImpl implements _AddSuccess {
  const _$AddSuccessImpl();

  @override
  String toString() {
    return 'BloodSugarState.addSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements BloodSugarState {
  const factory _AddSuccess() = _$AddSuccessImpl;
}

/// @nodoc
abstract class _$$ChangeSuccessImplCopyWith<$Res> {
  factory _$$ChangeSuccessImplCopyWith(
          _$ChangeSuccessImpl value, $Res Function(_$ChangeSuccessImpl) then) =
      __$$ChangeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeSuccessImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$ChangeSuccessImpl>
    implements _$$ChangeSuccessImplCopyWith<$Res> {
  __$$ChangeSuccessImplCopyWithImpl(
      _$ChangeSuccessImpl _value, $Res Function(_$ChangeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeSuccessImpl implements _ChangeSuccess {
  const _$ChangeSuccessImpl();

  @override
  String toString() {
    return 'BloodSugarState.changeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return changeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return changeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return changeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return changeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeSuccess implements BloodSugarState {
  const factory _ChangeSuccess() = _$ChangeSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$BloodSugarStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl();

  @override
  String toString() {
    return 'BloodSugarState.deleteSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() addSuccess,
    required TResult Function() changeSuccess,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? addSuccess,
    TResult? Function()? changeSuccess,
    TResult? Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? addSuccess,
    TResult Function()? changeSuccess,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_ChangeSuccess value)? changeSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Empty value)? empty,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements BloodSugarState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}
