// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Project project) addProject,
    required TResult Function(Project project) updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Project project)? addProject,
    TResult? Function(Project project)? updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Project project)? addProject,
    TResult Function(Project project)? updateProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectFetch value) fetch,
    required TResult Function(AddProject value) addProject,
    required TResult Function(UpdateProject value) updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectFetch value)? fetch,
    TResult? Function(AddProject value)? addProject,
    TResult? Function(UpdateProject value)? updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectFetch value)? fetch,
    TResult Function(AddProject value)? addProject,
    TResult Function(UpdateProject value)? updateProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res, ProjectEvent>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res, $Val extends ProjectEvent>
    implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectFetchImplCopyWith<$Res> {
  factory _$$ProjectFetchImplCopyWith(
          _$ProjectFetchImpl value, $Res Function(_$ProjectFetchImpl) then) =
      __$$ProjectFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectFetchImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$ProjectFetchImpl>
    implements _$$ProjectFetchImplCopyWith<$Res> {
  __$$ProjectFetchImplCopyWithImpl(
      _$ProjectFetchImpl _value, $Res Function(_$ProjectFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectFetchImpl implements ProjectFetch {
  const _$ProjectFetchImpl();

  @override
  String toString() {
    return 'ProjectEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Project project) addProject,
    required TResult Function(Project project) updateProject,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Project project)? addProject,
    TResult? Function(Project project)? updateProject,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Project project)? addProject,
    TResult Function(Project project)? updateProject,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectFetch value) fetch,
    required TResult Function(AddProject value) addProject,
    required TResult Function(UpdateProject value) updateProject,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectFetch value)? fetch,
    TResult? Function(AddProject value)? addProject,
    TResult? Function(UpdateProject value)? updateProject,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectFetch value)? fetch,
    TResult Function(AddProject value)? addProject,
    TResult Function(UpdateProject value)? updateProject,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ProjectFetch implements ProjectEvent {
  const factory ProjectFetch() = _$ProjectFetchImpl;
}

/// @nodoc
abstract class _$$AddProjectImplCopyWith<$Res> {
  factory _$$AddProjectImplCopyWith(
          _$AddProjectImpl value, $Res Function(_$AddProjectImpl) then) =
      __$$AddProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$AddProjectImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$AddProjectImpl>
    implements _$$AddProjectImplCopyWith<$Res> {
  __$$AddProjectImplCopyWithImpl(
      _$AddProjectImpl _value, $Res Function(_$AddProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$AddProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$AddProjectImpl implements AddProject {
  const _$AddProjectImpl({required this.project});

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectEvent.addProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProjectImplCopyWith<_$AddProjectImpl> get copyWith =>
      __$$AddProjectImplCopyWithImpl<_$AddProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Project project) addProject,
    required TResult Function(Project project) updateProject,
  }) {
    return addProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Project project)? addProject,
    TResult? Function(Project project)? updateProject,
  }) {
    return addProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Project project)? addProject,
    TResult Function(Project project)? updateProject,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectFetch value) fetch,
    required TResult Function(AddProject value) addProject,
    required TResult Function(UpdateProject value) updateProject,
  }) {
    return addProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectFetch value)? fetch,
    TResult? Function(AddProject value)? addProject,
    TResult? Function(UpdateProject value)? updateProject,
  }) {
    return addProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectFetch value)? fetch,
    TResult Function(AddProject value)? addProject,
    TResult Function(UpdateProject value)? updateProject,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(this);
    }
    return orElse();
  }
}

abstract class AddProject implements ProjectEvent {
  const factory AddProject({required final Project project}) = _$AddProjectImpl;

  Project get project;
  @JsonKey(ignore: true)
  _$$AddProjectImplCopyWith<_$AddProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProjectImplCopyWith<$Res> {
  factory _$$UpdateProjectImplCopyWith(
          _$UpdateProjectImpl value, $Res Function(_$UpdateProjectImpl) then) =
      __$$UpdateProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$UpdateProjectImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$UpdateProjectImpl>
    implements _$$UpdateProjectImplCopyWith<$Res> {
  __$$UpdateProjectImplCopyWithImpl(
      _$UpdateProjectImpl _value, $Res Function(_$UpdateProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$UpdateProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$UpdateProjectImpl implements UpdateProject {
  const _$UpdateProjectImpl({required this.project});

  @override
  final Project project;

  @override
  String toString() {
    return 'ProjectEvent.updateProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProjectImplCopyWith<_$UpdateProjectImpl> get copyWith =>
      __$$UpdateProjectImplCopyWithImpl<_$UpdateProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Project project) addProject,
    required TResult Function(Project project) updateProject,
  }) {
    return updateProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Project project)? addProject,
    TResult? Function(Project project)? updateProject,
  }) {
    return updateProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Project project)? addProject,
    TResult Function(Project project)? updateProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectFetch value) fetch,
    required TResult Function(AddProject value) addProject,
    required TResult Function(UpdateProject value) updateProject,
  }) {
    return updateProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectFetch value)? fetch,
    TResult? Function(AddProject value)? addProject,
    TResult? Function(UpdateProject value)? updateProject,
  }) {
    return updateProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectFetch value)? fetch,
    TResult Function(AddProject value)? addProject,
    TResult Function(UpdateProject value)? updateProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(this);
    }
    return orElse();
  }
}

abstract class UpdateProject implements ProjectEvent {
  const factory UpdateProject({required final Project project}) =
      _$UpdateProjectImpl;

  Project get project;
  @JsonKey(ignore: true)
  _$$UpdateProjectImplCopyWith<_$UpdateProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
