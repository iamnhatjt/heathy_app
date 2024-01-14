// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HeartRateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(String id, HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(String id, HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(String id, HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateEventCopyWith<$Res> {
  factory $HeartRateEventCopyWith(
          HeartRateEvent value, $Res Function(HeartRateEvent) then) =
      _$HeartRateEventCopyWithImpl<$Res, HeartRateEvent>;
}

/// @nodoc
class _$HeartRateEventCopyWithImpl<$Res, $Val extends HeartRateEvent>
    implements $HeartRateEventCopyWith<$Res> {
  _$HeartRateEventCopyWithImpl(this._value, this._then);

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
  $Res call({HeartRateModel heartRateModel});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartRateModel = null,
  }) {
    return _then(_$StartedImpl(
      null == heartRateModel
          ? _value.heartRateModel
          : heartRateModel // ignore: cast_nullable_to_non_nullable
              as HeartRateModel,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.heartRateModel);

  @override
  final HeartRateModel heartRateModel;

  @override
  String toString() {
    return 'HeartRateEvent.addHeartRate(heartRateModel: $heartRateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.heartRateModel, heartRateModel) ||
                other.heartRateModel == heartRateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heartRateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(String id, HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
  }) {
    return addHeartRate(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(String id, HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
  }) {
    return addHeartRate?.call(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(String id, HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (addHeartRate != null) {
      return addHeartRate(heartRateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
  }) {
    return addHeartRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
  }) {
    return addHeartRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    required TResult orElse(),
  }) {
    if (addHeartRate != null) {
      return addHeartRate(this);
    }
    return orElse();
  }
}

abstract class _Started implements HeartRateEvent {
  const factory _Started(final HeartRateModel heartRateModel) = _$StartedImpl;

  HeartRateModel get heartRateModel;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getHeartRateImplCopyWith<$Res> {
  factory _$$getHeartRateImplCopyWith(
          _$getHeartRateImpl value, $Res Function(_$getHeartRateImpl) then) =
      __$$getHeartRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$getHeartRateImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$getHeartRateImpl>
    implements _$$getHeartRateImplCopyWith<$Res> {
  __$$getHeartRateImplCopyWithImpl(
      _$getHeartRateImpl _value, $Res Function(_$getHeartRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$getHeartRateImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getHeartRateImpl implements _getHeartRate {
  const _$getHeartRateImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HeartRateEvent.getHeartRate(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getHeartRateImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getHeartRateImplCopyWith<_$getHeartRateImpl> get copyWith =>
      __$$getHeartRateImplCopyWithImpl<_$getHeartRateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(String id, HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
  }) {
    return getHeartRate(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(String id, HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
  }) {
    return getHeartRate?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(String id, HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (getHeartRate != null) {
      return getHeartRate(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
  }) {
    return getHeartRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
  }) {
    return getHeartRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    required TResult orElse(),
  }) {
    if (getHeartRate != null) {
      return getHeartRate(this);
    }
    return orElse();
  }
}

abstract class _getHeartRate implements HeartRateEvent {
  const factory _getHeartRate(final String id) = _$getHeartRateImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$getHeartRateImplCopyWith<_$getHeartRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateImplCopyWith<$Res> {
  factory _$$updateImplCopyWith(
          _$updateImpl value, $Res Function(_$updateImpl) then) =
      __$$updateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, HeartRateModel heartRateModel});
}

/// @nodoc
class __$$updateImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$updateImpl>
    implements _$$updateImplCopyWith<$Res> {
  __$$updateImplCopyWithImpl(
      _$updateImpl _value, $Res Function(_$updateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? heartRateModel = null,
  }) {
    return _then(_$updateImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == heartRateModel
          ? _value.heartRateModel
          : heartRateModel // ignore: cast_nullable_to_non_nullable
              as HeartRateModel,
    ));
  }
}

/// @nodoc

class _$updateImpl implements _update {
  const _$updateImpl(this.id, this.heartRateModel);

  @override
  final String id;
  @override
  final HeartRateModel heartRateModel;

  @override
  String toString() {
    return 'HeartRateEvent.update(id: $id, heartRateModel: $heartRateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.heartRateModel, heartRateModel) ||
                other.heartRateModel == heartRateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, heartRateModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateImplCopyWith<_$updateImpl> get copyWith =>
      __$$updateImplCopyWithImpl<_$updateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(String id, HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
  }) {
    return update(id, heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(String id, HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
  }) {
    return update?.call(id, heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(String id, HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, heartRateModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _update implements HeartRateEvent {
  const factory _update(final String id, final HeartRateModel heartRateModel) =
      _$updateImpl;

  String get id;
  HeartRateModel get heartRateModel;
  @JsonKey(ignore: true)
  _$$updateImplCopyWith<_$updateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteImplCopyWith<$Res> {
  factory _$$deleteImplCopyWith(
          _$deleteImpl value, $Res Function(_$deleteImpl) then) =
      __$$deleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$deleteImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$deleteImpl>
    implements _$$deleteImplCopyWith<$Res> {
  __$$deleteImplCopyWithImpl(
      _$deleteImpl _value, $Res Function(_$deleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$deleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteImpl implements _delete {
  const _$deleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HeartRateEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteImplCopyWith<_$deleteImpl> get copyWith =>
      __$$deleteImplCopyWithImpl<_$deleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(String id, HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(String id, HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(String id, HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _delete implements HeartRateEvent {
  const factory _delete(final String id) = _$deleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$deleteImplCopyWith<_$deleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeartRateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartRateStateCopyWith<$Res> {
  factory $HeartRateStateCopyWith(
          HeartRateState value, $Res Function(HeartRateState) then) =
      _$HeartRateStateCopyWithImpl<$Res, HeartRateState>;
}

/// @nodoc
class _$HeartRateStateCopyWithImpl<$Res, $Val extends HeartRateState>
    implements $HeartRateStateCopyWith<$Res> {
  _$HeartRateStateCopyWithImpl(this._value, this._then);

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
    extends _$HeartRateStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HeartRateState.initial()';
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
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HeartRateState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'HeartRateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements HeartRateState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$loadedImplCopyWith<$Res> {
  factory _$$loadedImplCopyWith(
          _$loadedImpl value, $Res Function(_$loadedImpl) then) =
      __$$loadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadedImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$loadedImpl>
    implements _$$loadedImplCopyWith<$Res> {
  __$$loadedImplCopyWithImpl(
      _$loadedImpl _value, $Res Function(_$loadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadedImpl implements _loaded {
  const _$loadedImpl();

  @override
  String toString() {
    return 'HeartRateState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements HeartRateState {
  const factory _loaded() = _$loadedImpl;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl();

  @override
  String toString() {
    return 'HeartRateState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$errorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements HeartRateState {
  const factory _error() = _$errorImpl;
}
