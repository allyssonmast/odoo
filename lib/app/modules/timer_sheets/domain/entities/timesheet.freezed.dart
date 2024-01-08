// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timesheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Timesheet _$TimesheetFromJson(Map<String, dynamic> json) {
  return _Timesheet.fromJson(json);
}

/// @nodoc
mixin _$Timesheet {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  String get associatedProject => throw _privateConstructorUsedError;
  String get responsibleUser => throw _privateConstructorUsedError;
  Task get task => throw _privateConstructorUsedError;
  bool get isCountin => throw _privateConstructorUsedError;
  Duration get taskDuration => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  List<Records> get associatedRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimesheetCopyWith<Timesheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimesheetCopyWith<$Res> {
  factory $TimesheetCopyWith(Timesheet value, $Res Function(Timesheet) then) =
      _$TimesheetCopyWithImpl<$Res, Timesheet>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String description,
      bool favorite,
      String associatedProject,
      String responsibleUser,
      Task task,
      bool isCountin,
      Duration taskDuration,
      List<String> tags,
      List<Comment> comments,
      List<Records> associatedRecords});
}

/// @nodoc
class _$TimesheetCopyWithImpl<$Res, $Val extends Timesheet>
    implements $TimesheetCopyWith<$Res> {
  _$TimesheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? description = null,
    Object? favorite = null,
    Object? associatedProject = null,
    Object? responsibleUser = null,
    Object? task = null,
    Object? isCountin = null,
    Object? taskDuration = null,
    Object? tags = null,
    Object? comments = null,
    Object? associatedRecords = null,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      associatedProject: null == associatedProject
          ? _value.associatedProject
          : associatedProject // ignore: cast_nullable_to_non_nullable
              as String,
      responsibleUser: null == responsibleUser
          ? _value.responsibleUser
          : responsibleUser // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      isCountin: null == isCountin
          ? _value.isCountin
          : isCountin // ignore: cast_nullable_to_non_nullable
              as bool,
      taskDuration: null == taskDuration
          ? _value.taskDuration
          : taskDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      associatedRecords: null == associatedRecords
          ? _value.associatedRecords
          : associatedRecords // ignore: cast_nullable_to_non_nullable
              as List<Records>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimesheetImplCopyWith<$Res>
    implements $TimesheetCopyWith<$Res> {
  factory _$$TimesheetImplCopyWith(
          _$TimesheetImpl value, $Res Function(_$TimesheetImpl) then) =
      __$$TimesheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      String description,
      bool favorite,
      String associatedProject,
      String responsibleUser,
      Task task,
      bool isCountin,
      Duration taskDuration,
      List<String> tags,
      List<Comment> comments,
      List<Records> associatedRecords});
}

/// @nodoc
class __$$TimesheetImplCopyWithImpl<$Res>
    extends _$TimesheetCopyWithImpl<$Res, _$TimesheetImpl>
    implements _$$TimesheetImplCopyWith<$Res> {
  __$$TimesheetImplCopyWithImpl(
      _$TimesheetImpl _value, $Res Function(_$TimesheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? description = null,
    Object? favorite = null,
    Object? associatedProject = null,
    Object? responsibleUser = null,
    Object? task = null,
    Object? isCountin = null,
    Object? taskDuration = null,
    Object? tags = null,
    Object? comments = null,
    Object? associatedRecords = null,
  }) {
    return _then(_$TimesheetImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      associatedProject: null == associatedProject
          ? _value.associatedProject
          : associatedProject // ignore: cast_nullable_to_non_nullable
              as String,
      responsibleUser: null == responsibleUser
          ? _value.responsibleUser
          : responsibleUser // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      isCountin: null == isCountin
          ? _value.isCountin
          : isCountin // ignore: cast_nullable_to_non_nullable
              as bool,
      taskDuration: null == taskDuration
          ? _value.taskDuration
          : taskDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      associatedRecords: null == associatedRecords
          ? _value._associatedRecords
          : associatedRecords // ignore: cast_nullable_to_non_nullable
              as List<Records>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimesheetImpl implements _Timesheet {
  const _$TimesheetImpl(
      {required this.startTime,
      required this.endTime,
      required this.description,
      required this.favorite,
      required this.associatedProject,
      required this.responsibleUser,
      required this.task,
      required this.isCountin,
      required this.taskDuration,
      required final List<String> tags,
      required final List<Comment> comments,
      required final List<Records> associatedRecords})
      : _tags = tags,
        _comments = comments,
        _associatedRecords = associatedRecords;

  factory _$TimesheetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimesheetImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String description;
  @override
  final bool favorite;
  @override
  final String associatedProject;
  @override
  final String responsibleUser;
  @override
  final Task task;
  @override
  final bool isCountin;
  @override
  final Duration taskDuration;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<Records> _associatedRecords;
  @override
  List<Records> get associatedRecords {
    if (_associatedRecords is EqualUnmodifiableListView)
      return _associatedRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatedRecords);
  }

  @override
  String toString() {
    return 'Timesheet(startTime: $startTime, endTime: $endTime, description: $description, favorite: $favorite, associatedProject: $associatedProject, responsibleUser: $responsibleUser, task: $task, isCountin: $isCountin, taskDuration: $taskDuration, tags: $tags, comments: $comments, associatedRecords: $associatedRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimesheetImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.associatedProject, associatedProject) ||
                other.associatedProject == associatedProject) &&
            (identical(other.responsibleUser, responsibleUser) ||
                other.responsibleUser == responsibleUser) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isCountin, isCountin) ||
                other.isCountin == isCountin) &&
            (identical(other.taskDuration, taskDuration) ||
                other.taskDuration == taskDuration) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other._associatedRecords, _associatedRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      startTime,
      endTime,
      description,
      favorite,
      associatedProject,
      responsibleUser,
      task,
      isCountin,
      taskDuration,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_associatedRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimesheetImplCopyWith<_$TimesheetImpl> get copyWith =>
      __$$TimesheetImplCopyWithImpl<_$TimesheetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimesheetImplToJson(
      this,
    );
  }
}

abstract class _Timesheet implements Timesheet {
  const factory _Timesheet(
      {required final DateTime startTime,
      required final DateTime endTime,
      required final String description,
      required final bool favorite,
      required final String associatedProject,
      required final String responsibleUser,
      required final Task task,
      required final bool isCountin,
      required final Duration taskDuration,
      required final List<String> tags,
      required final List<Comment> comments,
      required final List<Records> associatedRecords}) = _$TimesheetImpl;

  factory _Timesheet.fromJson(Map<String, dynamic> json) =
      _$TimesheetImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get description;
  @override
  bool get favorite;
  @override
  String get associatedProject;
  @override
  String get responsibleUser;
  @override
  Task get task;
  @override
  bool get isCountin;
  @override
  Duration get taskDuration;
  @override
  List<String> get tags;
  @override
  List<Comment> get comments;
  @override
  List<Records> get associatedRecords;
  @override
  @JsonKey(ignore: true)
  _$$TimesheetImplCopyWith<_$TimesheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
