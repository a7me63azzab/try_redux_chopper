// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'homeState',
      serializers.serialize(object.homeState,
          specifiedType: const FullType(HomeState)),
      'postState',
      serializers.serialize(object.postState,
          specifiedType: const FullType(PostState)),
      'loginState',
      serializers.serialize(object.loginState,
          specifiedType: const FullType(LoginState)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'homeState':
          result.homeState.replace(serializers.deserialize(value,
              specifiedType: const FullType(HomeState))! as HomeState);
          break;
        case 'postState':
          result.postState.replace(serializers.deserialize(value,
              specifiedType: const FullType(PostState))! as PostState);
          break;
        case 'loginState':
          result.loginState.replace(serializers.deserialize(value,
              specifiedType: const FullType(LoginState))! as LoginState);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final HomeState homeState;
  @override
  final PostState postState;
  @override
  final LoginState loginState;
  @override
  final String? error;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.homeState,
      required this.postState,
      required this.loginState,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(homeState, 'AppState', 'homeState');
    BuiltValueNullFieldError.checkNotNull(postState, 'AppState', 'postState');
    BuiltValueNullFieldError.checkNotNull(loginState, 'AppState', 'loginState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        homeState == other.homeState &&
        postState == other.postState &&
        loginState == other.loginState &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, homeState.hashCode), postState.hashCode),
            loginState.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('homeState', homeState)
          ..add('postState', postState)
          ..add('loginState', loginState)
          ..add('error', error))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  HomeStateBuilder? _homeState;
  HomeStateBuilder get homeState =>
      _$this._homeState ??= new HomeStateBuilder();
  set homeState(HomeStateBuilder? homeState) => _$this._homeState = homeState;

  PostStateBuilder? _postState;
  PostStateBuilder get postState =>
      _$this._postState ??= new PostStateBuilder();
  set postState(PostStateBuilder? postState) => _$this._postState = postState;

  LoginStateBuilder? _loginState;
  LoginStateBuilder get loginState =>
      _$this._loginState ??= new LoginStateBuilder();
  set loginState(LoginStateBuilder? loginState) =>
      _$this._loginState = loginState;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _homeState = $v.homeState.toBuilder();
      _postState = $v.postState.toBuilder();
      _loginState = $v.loginState.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              homeState: homeState.build(),
              postState: postState.build(),
              loginState: loginState.build(),
              error: error);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'homeState';
        homeState.build();
        _$failedField = 'postState';
        postState.build();
        _$failedField = 'loginState';
        loginState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
