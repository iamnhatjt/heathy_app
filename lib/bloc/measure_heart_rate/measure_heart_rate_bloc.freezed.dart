// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_heart_rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeasureHeartRateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SensorValue value) onRawData,
    required TResult Function(int value) onBpm,
    required TResult Function() loaded,
    required TResult Function() onStop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SensorValue value)? onRawData,
    TResult? Function(int value)? onBpm,
    TResult? Function()? loaded,
    TResult? Function()? onStop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SensorValue value)? onRawData,
    TResult Function(int value)? onBpm,
    TResult Function()? loaded,
    TResult Function()? onStop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRawData value) onRawData,
    required TResult Function(_OnBpm value) onBpm,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OnStop value) onStop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRawData value)? onRawData,
    TResult? Function(_OnBpm value)? onBpm,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OnStop value)? onStop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRawData value)? onRawData,
    TResult Function(_OnBpm value)? onBpm,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OnStop value)? onStop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureHeartRateEventCopyWith<$Res> {
  factory $MeasureHeartRateEventCopyWith(MeasureHeartRateEvent value,
          $Res Function(MeasureHeartRateEvent) then) =
      _$MeasureHeartRateEventCopyWithImpl<$Res, MeasureHeartRateEvent>;
}

/// @nodoc
class _$MeasureHeartRateEventCopyWithImpl<$Res,
        $Val extends MeasureHeartRateEvent>
    implements $MeasureHeartRateEventCopyWith<$Res> {
  _$MeasureHeartRateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnRawDataImplCopyWith<$Res> {
  factory _$$OnRawDataImplCopyWith(
          _$OnRawDataImpl value, $Res Function(_$OnRawDataImpl) then) =
      __$$OnRawDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SensorValue value});
}

/// @nodoc
class __$$OnRawDataImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateEventCopyWithImpl<$Res, _$OnRawDataImpl>
    implements _$$OnRawDataImplCopyWith<$Res> {
  __$$OnRawDataImplCopyWithImpl(
      _$OnRawDataImpl _value, $Res Function(_$OnRawDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnRawDataImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as SensorValue,
    ));
  }
}

/// @nodoc

class _$OnRawDataImpl implements _OnRawData {
  const _$OnRawDataImpl(this.value);

  @override
  final SensorValue value;

  @override
  String toString() {
    return 'MeasureHeartRateEvent.onRawData(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRawDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRawDataImplCopyWith<_$OnRawDataImpl> get copyWith =>
      __$$OnRawDataImplCopyWithImpl<_$OnRawDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SensorValue value) onRawData,
    required TResult Function(int value) onBpm,
    required TResult Function() loaded,
    required TResult Function() onStop,
  }) {
    return onRawData(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SensorValue value)? onRawData,
    TResult? Function(int value)? onBpm,
    TResult? Function()? loaded,
    TResult? Function()? onStop,
  }) {
    return onRawData?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SensorValue value)? onRawData,
    TResult Function(int value)? onBpm,
    TResult Function()? loaded,
    TResult Function()? onStop,
    required TResult orElse(),
  }) {
    if (onRawData != null) {
      return onRawData(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRawData value) onRawData,
    required TResult Function(_OnBpm value) onBpm,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OnStop value) onStop,
  }) {
    return onRawData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRawData value)? onRawData,
    TResult? Function(_OnBpm value)? onBpm,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OnStop value)? onStop,
  }) {
    return onRawData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRawData value)? onRawData,
    TResult Function(_OnBpm value)? onBpm,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OnStop value)? onStop,
    required TResult orElse(),
  }) {
    if (onRawData != null) {
      return onRawData(this);
    }
    return orElse();
  }
}

abstract class _OnRawData implements MeasureHeartRateEvent {
  const factory _OnRawData(final SensorValue value) = _$OnRawDataImpl;

  SensorValue get value;
  @JsonKey(ignore: true)
  _$$OnRawDataImplCopyWith<_$OnRawDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBpmImplCopyWith<$Res> {
  factory _$$OnBpmImplCopyWith(
          _$OnBpmImpl value, $Res Function(_$OnBpmImpl) then) =
      __$$OnBpmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$OnBpmImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateEventCopyWithImpl<$Res, _$OnBpmImpl>
    implements _$$OnBpmImplCopyWith<$Res> {
  __$$OnBpmImplCopyWithImpl(
      _$OnBpmImpl _value, $Res Function(_$OnBpmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnBpmImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnBpmImpl implements _OnBpm {
  const _$OnBpmImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'MeasureHeartRateEvent.onBpm(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBpmImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBpmImplCopyWith<_$OnBpmImpl> get copyWith =>
      __$$OnBpmImplCopyWithImpl<_$OnBpmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SensorValue value) onRawData,
    required TResult Function(int value) onBpm,
    required TResult Function() loaded,
    required TResult Function() onStop,
  }) {
    return onBpm(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SensorValue value)? onRawData,
    TResult? Function(int value)? onBpm,
    TResult? Function()? loaded,
    TResult? Function()? onStop,
  }) {
    return onBpm?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SensorValue value)? onRawData,
    TResult Function(int value)? onBpm,
    TResult Function()? loaded,
    TResult Function()? onStop,
    required TResult orElse(),
  }) {
    if (onBpm != null) {
      return onBpm(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRawData value) onRawData,
    required TResult Function(_OnBpm value) onBpm,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OnStop value) onStop,
  }) {
    return onBpm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRawData value)? onRawData,
    TResult? Function(_OnBpm value)? onBpm,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OnStop value)? onStop,
  }) {
    return onBpm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRawData value)? onRawData,
    TResult Function(_OnBpm value)? onBpm,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OnStop value)? onStop,
    required TResult orElse(),
  }) {
    if (onBpm != null) {
      return onBpm(this);
    }
    return orElse();
  }
}

abstract class _OnBpm implements MeasureHeartRateEvent {
  const factory _OnBpm(final int value) = _$OnBpmImpl;

  int get value;
  @JsonKey(ignore: true)
  _$$OnBpmImplCopyWith<_$OnBpmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateEventCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'MeasureHeartRateEvent.loaded()';
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
    required TResult Function(SensorValue value) onRawData,
    required TResult Function(int value) onBpm,
    required TResult Function() loaded,
    required TResult Function() onStop,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SensorValue value)? onRawData,
    TResult? Function(int value)? onBpm,
    TResult? Function()? loaded,
    TResult? Function()? onStop,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SensorValue value)? onRawData,
    TResult Function(int value)? onBpm,
    TResult Function()? loaded,
    TResult Function()? onStop,
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
    required TResult Function(_OnRawData value) onRawData,
    required TResult Function(_OnBpm value) onBpm,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OnStop value) onStop,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRawData value)? onRawData,
    TResult? Function(_OnBpm value)? onBpm,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OnStop value)? onStop,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRawData value)? onRawData,
    TResult Function(_OnBpm value)? onBpm,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OnStop value)? onStop,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MeasureHeartRateEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$OnStopImplCopyWith<$Res> {
  factory _$$OnStopImplCopyWith(
          _$OnStopImpl value, $Res Function(_$OnStopImpl) then) =
      __$$OnStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnStopImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateEventCopyWithImpl<$Res, _$OnStopImpl>
    implements _$$OnStopImplCopyWith<$Res> {
  __$$OnStopImplCopyWithImpl(
      _$OnStopImpl _value, $Res Function(_$OnStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnStopImpl implements _OnStop {
  const _$OnStopImpl();

  @override
  String toString() {
    return 'MeasureHeartRateEvent.onStop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SensorValue value) onRawData,
    required TResult Function(int value) onBpm,
    required TResult Function() loaded,
    required TResult Function() onStop,
  }) {
    return onStop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SensorValue value)? onRawData,
    TResult? Function(int value)? onBpm,
    TResult? Function()? loaded,
    TResult? Function()? onStop,
  }) {
    return onStop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SensorValue value)? onRawData,
    TResult Function(int value)? onBpm,
    TResult Function()? loaded,
    TResult Function()? onStop,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRawData value) onRawData,
    required TResult Function(_OnBpm value) onBpm,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_OnStop value) onStop,
  }) {
    return onStop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRawData value)? onRawData,
    TResult? Function(_OnBpm value)? onBpm,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_OnStop value)? onStop,
  }) {
    return onStop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRawData value)? onRawData,
    TResult Function(_OnBpm value)? onBpm,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_OnStop value)? onStop,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop(this);
    }
    return orElse();
  }
}

abstract class _OnStop implements MeasureHeartRateEvent {
  const factory _OnStop() = _$OnStopImpl;
}

/// @nodoc
mixin _$MeasureHeartRateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) measuring,
    required TResult Function() measured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress)? measuring,
    TResult? Function()? measured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? measuring,
    TResult Function()? measured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Measuring value) measuring,
    required TResult Function(_Measured value) measured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Measuring value)? measuring,
    TResult? Function(_Measured value)? measured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Measuring value)? measuring,
    TResult Function(_Measured value)? measured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureHeartRateStateCopyWith<$Res> {
  factory $MeasureHeartRateStateCopyWith(MeasureHeartRateState value,
          $Res Function(MeasureHeartRateState) then) =
      _$MeasureHeartRateStateCopyWithImpl<$Res, MeasureHeartRateState>;
}

/// @nodoc
class _$MeasureHeartRateStateCopyWithImpl<$Res,
        $Val extends MeasureHeartRateState>
    implements $MeasureHeartRateStateCopyWith<$Res> {
  _$MeasureHeartRateStateCopyWithImpl(this._value, this._then);

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
    extends _$MeasureHeartRateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) measuring,
    required TResult Function() measured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress)? measuring,
    TResult? Function()? measured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? measuring,
    TResult Function()? measured,
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
    required TResult Function(_Measuring value) measuring,
    required TResult Function(_Measured value) measured,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Measuring value)? measuring,
    TResult? Function(_Measured value)? measured,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Measuring value)? measuring,
    TResult Function(_Measured value)? measured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MeasureHeartRateState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MeasuringImplCopyWith<$Res> {
  factory _$$MeasuringImplCopyWith(
          _$MeasuringImpl value, $Res Function(_$MeasuringImpl) then) =
      __$$MeasuringImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$MeasuringImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateStateCopyWithImpl<$Res, _$MeasuringImpl>
    implements _$$MeasuringImplCopyWith<$Res> {
  __$$MeasuringImplCopyWithImpl(
      _$MeasuringImpl _value, $Res Function(_$MeasuringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$MeasuringImpl(
      null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MeasuringImpl implements _Measuring {
  const _$MeasuringImpl(this.progress);

  @override
  final double progress;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasuringImplCopyWith<_$MeasuringImpl> get copyWith =>
      __$$MeasuringImplCopyWithImpl<_$MeasuringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) measuring,
    required TResult Function() measured,
  }) {
    return measuring(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress)? measuring,
    TResult? Function()? measured,
  }) {
    return measuring?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? measuring,
    TResult Function()? measured,
    required TResult orElse(),
  }) {
    if (measuring != null) {
      return measuring(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Measuring value) measuring,
    required TResult Function(_Measured value) measured,
  }) {
    return measuring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Measuring value)? measuring,
    TResult? Function(_Measured value)? measured,
  }) {
    return measuring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Measuring value)? measuring,
    TResult Function(_Measured value)? measured,
    required TResult orElse(),
  }) {
    if (measuring != null) {
      return measuring(this);
    }
    return orElse();
  }
}

abstract class _Measuring implements MeasureHeartRateState {
  const factory _Measuring(final double progress) = _$MeasuringImpl;

  double get progress;
  @JsonKey(ignore: true)
  _$$MeasuringImplCopyWith<_$MeasuringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeasuredImplCopyWith<$Res> {
  factory _$$MeasuredImplCopyWith(
          _$MeasuredImpl value, $Res Function(_$MeasuredImpl) then) =
      __$$MeasuredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MeasuredImplCopyWithImpl<$Res>
    extends _$MeasureHeartRateStateCopyWithImpl<$Res, _$MeasuredImpl>
    implements _$$MeasuredImplCopyWith<$Res> {
  __$$MeasuredImplCopyWithImpl(
      _$MeasuredImpl _value, $Res Function(_$MeasuredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MeasuredImpl implements _Measured {
  const _$MeasuredImpl();

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(double progress) measuring,
    required TResult Function() measured,
  }) {
    return measured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(double progress)? measuring,
    TResult? Function()? measured,
  }) {
    return measured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(double progress)? measuring,
    TResult Function()? measured,
    required TResult orElse(),
  }) {
    if (measured != null) {
      return measured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Measuring value) measuring,
    required TResult Function(_Measured value) measured,
  }) {
    return measured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Measuring value)? measuring,
    TResult? Function(_Measured value)? measured,
  }) {
    return measured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Measuring value)? measuring,
    TResult Function(_Measured value)? measured,
    required TResult orElse(),
  }) {
    if (measured != null) {
      return measured(this);
    }
    return orElse();
  }
}

abstract class _Measured implements MeasureHeartRateState {
  const factory _Measured() = _$MeasuredImpl;
}
