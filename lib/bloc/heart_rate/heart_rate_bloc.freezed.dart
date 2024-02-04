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
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) addHeartRate,
    required TResult Function(_getHeartRate value) getHeartRate,
    required TResult Function(_update value) update,
    required TResult Function(_delete value) delete,
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
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
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return addHeartRate(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return addHeartRate?.call(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
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
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
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
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
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
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return getHeartRate(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return getHeartRate?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
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
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
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
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
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
  $Res call({HeartRateModel heartRateModel});
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
    Object? heartRateModel = null,
  }) {
    return _then(_$updateImpl(
      null == heartRateModel
          ? _value.heartRateModel
          : heartRateModel // ignore: cast_nullable_to_non_nullable
              as HeartRateModel,
    ));
  }
}

/// @nodoc

class _$updateImpl implements _update {
  const _$updateImpl(this.heartRateModel);

  @override
  final HeartRateModel heartRateModel;

  @override
  String toString() {
    return 'HeartRateEvent.update(heartRateModel: $heartRateModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateImpl &&
            (identical(other.heartRateModel, heartRateModel) ||
                other.heartRateModel == heartRateModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, heartRateModel);

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
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return update(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return update?.call(heartRateModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(heartRateModel);
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
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
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
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
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _update implements HeartRateEvent {
  const factory _update(final HeartRateModel heartRateModel) = _$updateImpl;

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
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
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
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
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
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
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
abstract class _$$filterDateImplCopyWith<$Res> {
  factory _$$filterDateImplCopyWith(
          _$filterDateImpl value, $Res Function(_$filterDateImpl) then) =
      __$$filterDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange? dateRange});
}

/// @nodoc
class __$$filterDateImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$filterDateImpl>
    implements _$$filterDateImplCopyWith<$Res> {
  __$$filterDateImplCopyWithImpl(
      _$filterDateImpl _value, $Res Function(_$filterDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateRange = freezed,
  }) {
    return _then(_$filterDateImpl(
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ));
  }
}

/// @nodoc

class _$filterDateImpl implements _filterDate {
  const _$filterDateImpl({this.dateRange});

  @override
  final DateTimeRange? dateRange;

  @override
  String toString() {
    return 'HeartRateEvent.filterDate(dateRange: $dateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$filterDateImpl &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$filterDateImplCopyWith<_$filterDateImpl> get copyWith =>
      __$$filterDateImplCopyWithImpl<_$filterDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return filterDate(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return filterDate?.call(dateRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
    required TResult orElse(),
  }) {
    if (filterDate != null) {
      return filterDate(dateRange);
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
  }) {
    return filterDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
  }) {
    return filterDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (filterDate != null) {
      return filterDate(this);
    }
    return orElse();
  }
}

abstract class _filterDate implements HeartRateEvent {
  const factory _filterDate({final DateTimeRange? dateRange}) =
      _$filterDateImpl;

  DateTimeRange? get dateRange;
  @JsonKey(ignore: true)
  _$$filterDateImplCopyWith<_$filterDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$changeSelectedImplCopyWith<$Res> {
  factory _$$changeSelectedImplCopyWith(_$changeSelectedImpl value,
          $Res Function(_$changeSelectedImpl) then) =
      __$$changeSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HeartRateModel value});
}

/// @nodoc
class __$$changeSelectedImplCopyWithImpl<$Res>
    extends _$HeartRateEventCopyWithImpl<$Res, _$changeSelectedImpl>
    implements _$$changeSelectedImplCopyWith<$Res> {
  __$$changeSelectedImplCopyWithImpl(
      _$changeSelectedImpl _value, $Res Function(_$changeSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$changeSelectedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as HeartRateModel,
    ));
  }
}

/// @nodoc

class _$changeSelectedImpl implements _changeSelected {
  const _$changeSelectedImpl(this.value);

  @override
  final HeartRateModel value;

  @override
  String toString() {
    return 'HeartRateEvent.changeSelected(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeSelectedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeSelectedImplCopyWith<_$changeSelectedImpl> get copyWith =>
      __$$changeSelectedImplCopyWithImpl<_$changeSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HeartRateModel heartRateModel) addHeartRate,
    required TResult Function(String id) getHeartRate,
    required TResult Function(HeartRateModel heartRateModel) update,
    required TResult Function(String id) delete,
    required TResult Function(DateTimeRange? dateRange) filterDate,
    required TResult Function(HeartRateModel value) changeSelected,
  }) {
    return changeSelected(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult? Function(String id)? getHeartRate,
    TResult? Function(HeartRateModel heartRateModel)? update,
    TResult? Function(String id)? delete,
    TResult? Function(DateTimeRange? dateRange)? filterDate,
    TResult? Function(HeartRateModel value)? changeSelected,
  }) {
    return changeSelected?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HeartRateModel heartRateModel)? addHeartRate,
    TResult Function(String id)? getHeartRate,
    TResult Function(HeartRateModel heartRateModel)? update,
    TResult Function(String id)? delete,
    TResult Function(DateTimeRange? dateRange)? filterDate,
    TResult Function(HeartRateModel value)? changeSelected,
    required TResult orElse(),
  }) {
    if (changeSelected != null) {
      return changeSelected(value);
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
    required TResult Function(_filterDate value) filterDate,
    required TResult Function(_changeSelected value) changeSelected,
  }) {
    return changeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? addHeartRate,
    TResult? Function(_getHeartRate value)? getHeartRate,
    TResult? Function(_update value)? update,
    TResult? Function(_delete value)? delete,
    TResult? Function(_filterDate value)? filterDate,
    TResult? Function(_changeSelected value)? changeSelected,
  }) {
    return changeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? addHeartRate,
    TResult Function(_getHeartRate value)? getHeartRate,
    TResult Function(_update value)? update,
    TResult Function(_delete value)? delete,
    TResult Function(_filterDate value)? filterDate,
    TResult Function(_changeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (changeSelected != null) {
      return changeSelected(this);
    }
    return orElse();
  }
}

abstract class _changeSelected implements HeartRateEvent {
  const factory _changeSelected(final HeartRateModel value) =
      _$changeSelectedImpl;

  HeartRateModel get value;
  @JsonKey(ignore: true)
  _$$changeSelectedImplCopyWith<_$changeSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeartRateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
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
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
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
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'HeartRateState.loading()';
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
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HeartRateState {
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
    extends _$HeartRateStateCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'HeartRateState.loaded()';
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
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HeartRateState {
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
    extends _$HeartRateStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'HeartRateState.error(error: $error)';
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
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HeartRateState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl();

  @override
  String toString() {
    return 'HeartRateState.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements HeartRateState {
  const factory _Updated() = _$UpdatedImpl;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl();

  @override
  String toString() {
    return 'HeartRateState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements HeartRateState {
  const factory _Deleted() = _$DeletedImpl;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl();

  @override
  String toString() {
    return 'HeartRateState.added()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements HeartRateState {
  const factory _Added() = _$AddedImpl;
}

/// @nodoc
abstract class _$$FilteredImplCopyWith<$Res> {
  factory _$$FilteredImplCopyWith(
          _$FilteredImpl value, $Res Function(_$FilteredImpl) then) =
      __$$FilteredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilteredImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$FilteredImpl>
    implements _$$FilteredImplCopyWith<$Res> {
  __$$FilteredImplCopyWithImpl(
      _$FilteredImpl _value, $Res Function(_$FilteredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilteredImpl implements _Filtered {
  const _$FilteredImpl();

  @override
  String toString() {
    return 'HeartRateState.filtered()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilteredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return filtered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return filtered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements HeartRateState {
  const factory _Filtered() = _$FilteredImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$HeartRateStateCopyWithImpl<$Res, _$EmptyImpl>
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
    return 'HeartRateState.empty()';
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
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String error) error,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function() added,
    required TResult Function() filtered,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String error)? error,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function()? added,
    TResult? Function()? filtered,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function()? added,
    TResult Function()? filtered,
    TResult Function()? empty,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Added value) added,
    required TResult Function(_Filtered value) filtered,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_Added value)? added,
    TResult? Function(_Filtered value)? filtered,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Added value)? added,
    TResult Function(_Filtered value)? filtered,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements HeartRateState {
  const factory _Empty() = _$EmptyImpl;
}
