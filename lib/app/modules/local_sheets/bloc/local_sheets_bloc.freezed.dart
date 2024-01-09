// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sheets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalSheetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Timesheet timesheet) addProject,
    required TResult Function(Timesheet timesheet) updateProject,
    required TResult Function(Timesheet timesheet) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Timesheet timesheet)? addProject,
    TResult? Function(Timesheet timesheet)? updateProject,
    TResult? Function(Timesheet timesheet)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Timesheet timesheet)? addProject,
    TResult Function(Timesheet timesheet)? updateProject,
    TResult Function(Timesheet timesheet)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddTimeSheets value) addProject,
    required TResult Function(UpdateTimeSheets value) updateProject,
    required TResult Function(DeleteTimeSheets value) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddTimeSheets value)? addProject,
    TResult? Function(UpdateTimeSheets value)? updateProject,
    TResult? Function(DeleteTimeSheets value)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddTimeSheets value)? addProject,
    TResult Function(UpdateTimeSheets value)? updateProject,
    TResult Function(DeleteTimeSheets value)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSheetsEventCopyWith<$Res> {
  factory $LocalSheetsEventCopyWith(
          LocalSheetsEvent value, $Res Function(LocalSheetsEvent) then) =
      _$LocalSheetsEventCopyWithImpl<$Res, LocalSheetsEvent>;
}

/// @nodoc
class _$LocalSheetsEventCopyWithImpl<$Res, $Val extends LocalSheetsEvent>
    implements $LocalSheetsEventCopyWith<$Res> {
  _$LocalSheetsEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LocalSheetsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LocalSheetsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Timesheet timesheet) addProject,
    required TResult Function(Timesheet timesheet) updateProject,
    required TResult Function(Timesheet timesheet) deleteProject,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Timesheet timesheet)? addProject,
    TResult? Function(Timesheet timesheet)? updateProject,
    TResult? Function(Timesheet timesheet)? deleteProject,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Timesheet timesheet)? addProject,
    TResult Function(Timesheet timesheet)? updateProject,
    TResult Function(Timesheet timesheet)? deleteProject,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddTimeSheets value) addProject,
    required TResult Function(UpdateTimeSheets value) updateProject,
    required TResult Function(DeleteTimeSheets value) deleteProject,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddTimeSheets value)? addProject,
    TResult? Function(UpdateTimeSheets value)? updateProject,
    TResult? Function(DeleteTimeSheets value)? deleteProject,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddTimeSheets value)? addProject,
    TResult Function(UpdateTimeSheets value)? updateProject,
    TResult Function(DeleteTimeSheets value)? deleteProject,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocalSheetsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddTimeSheetsImplCopyWith<$Res> {
  factory _$$AddTimeSheetsImplCopyWith(
          _$AddTimeSheetsImpl value, $Res Function(_$AddTimeSheetsImpl) then) =
      __$$AddTimeSheetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Timesheet timesheet});

  $TimesheetCopyWith<$Res> get timesheet;
}

/// @nodoc
class __$$AddTimeSheetsImplCopyWithImpl<$Res>
    extends _$LocalSheetsEventCopyWithImpl<$Res, _$AddTimeSheetsImpl>
    implements _$$AddTimeSheetsImplCopyWith<$Res> {
  __$$AddTimeSheetsImplCopyWithImpl(
      _$AddTimeSheetsImpl _value, $Res Function(_$AddTimeSheetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timesheet = null,
  }) {
    return _then(_$AddTimeSheetsImpl(
      timesheet: null == timesheet
          ? _value.timesheet
          : timesheet // ignore: cast_nullable_to_non_nullable
              as Timesheet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimesheetCopyWith<$Res> get timesheet {
    return $TimesheetCopyWith<$Res>(_value.timesheet, (value) {
      return _then(_value.copyWith(timesheet: value));
    });
  }
}

/// @nodoc

class _$AddTimeSheetsImpl implements AddTimeSheets {
  const _$AddTimeSheetsImpl({required this.timesheet});

  @override
  final Timesheet timesheet;

  @override
  String toString() {
    return 'LocalSheetsEvent.addProject(timesheet: $timesheet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTimeSheetsImpl &&
            (identical(other.timesheet, timesheet) ||
                other.timesheet == timesheet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timesheet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTimeSheetsImplCopyWith<_$AddTimeSheetsImpl> get copyWith =>
      __$$AddTimeSheetsImplCopyWithImpl<_$AddTimeSheetsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Timesheet timesheet) addProject,
    required TResult Function(Timesheet timesheet) updateProject,
    required TResult Function(Timesheet timesheet) deleteProject,
  }) {
    return addProject(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Timesheet timesheet)? addProject,
    TResult? Function(Timesheet timesheet)? updateProject,
    TResult? Function(Timesheet timesheet)? deleteProject,
  }) {
    return addProject?.call(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Timesheet timesheet)? addProject,
    TResult Function(Timesheet timesheet)? updateProject,
    TResult Function(Timesheet timesheet)? deleteProject,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(timesheet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddTimeSheets value) addProject,
    required TResult Function(UpdateTimeSheets value) updateProject,
    required TResult Function(DeleteTimeSheets value) deleteProject,
  }) {
    return addProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddTimeSheets value)? addProject,
    TResult? Function(UpdateTimeSheets value)? updateProject,
    TResult? Function(DeleteTimeSheets value)? deleteProject,
  }) {
    return addProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddTimeSheets value)? addProject,
    TResult Function(UpdateTimeSheets value)? updateProject,
    TResult Function(DeleteTimeSheets value)? deleteProject,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(this);
    }
    return orElse();
  }
}

abstract class AddTimeSheets implements LocalSheetsEvent {
  const factory AddTimeSheets({required final Timesheet timesheet}) =
      _$AddTimeSheetsImpl;

  Timesheet get timesheet;
  @JsonKey(ignore: true)
  _$$AddTimeSheetsImplCopyWith<_$AddTimeSheetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimeSheetsImplCopyWith<$Res> {
  factory _$$UpdateTimeSheetsImplCopyWith(_$UpdateTimeSheetsImpl value,
          $Res Function(_$UpdateTimeSheetsImpl) then) =
      __$$UpdateTimeSheetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Timesheet timesheet});

  $TimesheetCopyWith<$Res> get timesheet;
}

/// @nodoc
class __$$UpdateTimeSheetsImplCopyWithImpl<$Res>
    extends _$LocalSheetsEventCopyWithImpl<$Res, _$UpdateTimeSheetsImpl>
    implements _$$UpdateTimeSheetsImplCopyWith<$Res> {
  __$$UpdateTimeSheetsImplCopyWithImpl(_$UpdateTimeSheetsImpl _value,
      $Res Function(_$UpdateTimeSheetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timesheet = null,
  }) {
    return _then(_$UpdateTimeSheetsImpl(
      timesheet: null == timesheet
          ? _value.timesheet
          : timesheet // ignore: cast_nullable_to_non_nullable
              as Timesheet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimesheetCopyWith<$Res> get timesheet {
    return $TimesheetCopyWith<$Res>(_value.timesheet, (value) {
      return _then(_value.copyWith(timesheet: value));
    });
  }
}

/// @nodoc

class _$UpdateTimeSheetsImpl implements UpdateTimeSheets {
  const _$UpdateTimeSheetsImpl({required this.timesheet});

  @override
  final Timesheet timesheet;

  @override
  String toString() {
    return 'LocalSheetsEvent.updateProject(timesheet: $timesheet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimeSheetsImpl &&
            (identical(other.timesheet, timesheet) ||
                other.timesheet == timesheet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timesheet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimeSheetsImplCopyWith<_$UpdateTimeSheetsImpl> get copyWith =>
      __$$UpdateTimeSheetsImplCopyWithImpl<_$UpdateTimeSheetsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Timesheet timesheet) addProject,
    required TResult Function(Timesheet timesheet) updateProject,
    required TResult Function(Timesheet timesheet) deleteProject,
  }) {
    return updateProject(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Timesheet timesheet)? addProject,
    TResult? Function(Timesheet timesheet)? updateProject,
    TResult? Function(Timesheet timesheet)? deleteProject,
  }) {
    return updateProject?.call(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Timesheet timesheet)? addProject,
    TResult Function(Timesheet timesheet)? updateProject,
    TResult Function(Timesheet timesheet)? deleteProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(timesheet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddTimeSheets value) addProject,
    required TResult Function(UpdateTimeSheets value) updateProject,
    required TResult Function(DeleteTimeSheets value) deleteProject,
  }) {
    return updateProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddTimeSheets value)? addProject,
    TResult? Function(UpdateTimeSheets value)? updateProject,
    TResult? Function(DeleteTimeSheets value)? deleteProject,
  }) {
    return updateProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddTimeSheets value)? addProject,
    TResult Function(UpdateTimeSheets value)? updateProject,
    TResult Function(DeleteTimeSheets value)? deleteProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(this);
    }
    return orElse();
  }
}

abstract class UpdateTimeSheets implements LocalSheetsEvent {
  const factory UpdateTimeSheets({required final Timesheet timesheet}) =
      _$UpdateTimeSheetsImpl;

  Timesheet get timesheet;
  @JsonKey(ignore: true)
  _$$UpdateTimeSheetsImplCopyWith<_$UpdateTimeSheetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTimeSheetsImplCopyWith<$Res> {
  factory _$$DeleteTimeSheetsImplCopyWith(_$DeleteTimeSheetsImpl value,
          $Res Function(_$DeleteTimeSheetsImpl) then) =
      __$$DeleteTimeSheetsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Timesheet timesheet});

  $TimesheetCopyWith<$Res> get timesheet;
}

/// @nodoc
class __$$DeleteTimeSheetsImplCopyWithImpl<$Res>
    extends _$LocalSheetsEventCopyWithImpl<$Res, _$DeleteTimeSheetsImpl>
    implements _$$DeleteTimeSheetsImplCopyWith<$Res> {
  __$$DeleteTimeSheetsImplCopyWithImpl(_$DeleteTimeSheetsImpl _value,
      $Res Function(_$DeleteTimeSheetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timesheet = null,
  }) {
    return _then(_$DeleteTimeSheetsImpl(
      timesheet: null == timesheet
          ? _value.timesheet
          : timesheet // ignore: cast_nullable_to_non_nullable
              as Timesheet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimesheetCopyWith<$Res> get timesheet {
    return $TimesheetCopyWith<$Res>(_value.timesheet, (value) {
      return _then(_value.copyWith(timesheet: value));
    });
  }
}

/// @nodoc

class _$DeleteTimeSheetsImpl implements DeleteTimeSheets {
  const _$DeleteTimeSheetsImpl({required this.timesheet});

  @override
  final Timesheet timesheet;

  @override
  String toString() {
    return 'LocalSheetsEvent.deleteProject(timesheet: $timesheet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTimeSheetsImpl &&
            (identical(other.timesheet, timesheet) ||
                other.timesheet == timesheet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timesheet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTimeSheetsImplCopyWith<_$DeleteTimeSheetsImpl> get copyWith =>
      __$$DeleteTimeSheetsImplCopyWithImpl<_$DeleteTimeSheetsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Timesheet timesheet) addProject,
    required TResult Function(Timesheet timesheet) updateProject,
    required TResult Function(Timesheet timesheet) deleteProject,
  }) {
    return deleteProject(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Timesheet timesheet)? addProject,
    TResult? Function(Timesheet timesheet)? updateProject,
    TResult? Function(Timesheet timesheet)? deleteProject,
  }) {
    return deleteProject?.call(timesheet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Timesheet timesheet)? addProject,
    TResult Function(Timesheet timesheet)? updateProject,
    TResult Function(Timesheet timesheet)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(timesheet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddTimeSheets value) addProject,
    required TResult Function(UpdateTimeSheets value) updateProject,
    required TResult Function(DeleteTimeSheets value) deleteProject,
  }) {
    return deleteProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddTimeSheets value)? addProject,
    TResult? Function(UpdateTimeSheets value)? updateProject,
    TResult? Function(DeleteTimeSheets value)? deleteProject,
  }) {
    return deleteProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddTimeSheets value)? addProject,
    TResult Function(UpdateTimeSheets value)? updateProject,
    TResult Function(DeleteTimeSheets value)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(this);
    }
    return orElse();
  }
}

abstract class DeleteTimeSheets implements LocalSheetsEvent {
  const factory DeleteTimeSheets({required final Timesheet timesheet}) =
      _$DeleteTimeSheetsImpl;

  Timesheet get timesheet;
  @JsonKey(ignore: true)
  _$$DeleteTimeSheetsImplCopyWith<_$DeleteTimeSheetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
