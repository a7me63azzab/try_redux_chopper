// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginState> _$loginStateSerializer = new _$LoginStateSerializer();

class _$LoginStateSerializer implements StructuredSerializer<LoginState> {
  @override
  final Iterable<Type> types = const [LoginState, _$LoginState];
  @override
  final String wireName = 'LoginState';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'hasError',
      serializers.serialize(object.hasError,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loginData;
    if (value != null) {
      result
        ..add('loginData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltLogin)));
    }
    return result;
  }

  @override
  LoginState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hasError':
          result.hasError = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loginData':
          result.loginData.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltLogin))! as BuiltLogin);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginState extends LoginState {
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? error;
  @override
  final BuiltLogin? loginData;

  factory _$LoginState([void Function(LoginStateBuilder)? updates]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._(
      {required this.isLoading,
      required this.hasError,
      this.error,
      this.loginData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'LoginState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(hasError, 'LoginState', 'hasError');
  }

  @override
  LoginState rebuild(void Function(LoginStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        isLoading == other.isLoading &&
        hasError == other.hasError &&
        error == other.error &&
        loginData == other.loginData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), hasError.hashCode), error.hashCode),
        loginData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('isLoading', isLoading)
          ..add('hasError', hasError)
          ..add('error', error)
          ..add('loginData', loginData))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BuiltLoginBuilder? _loginData;
  BuiltLoginBuilder get loginData =>
      _$this._loginData ??= new BuiltLoginBuilder();
  set loginData(BuiltLoginBuilder? loginData) => _$this._loginData = loginData;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _hasError = $v.hasError;
      _error = $v.error;
      _loginData = $v.loginData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginState;
  }

  @override
  void update(void Function(LoginStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    _$LoginState _$result;
    try {
      _$result = _$v ??
          new _$LoginState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'LoginState', 'isLoading'),
              hasError: BuiltValueNullFieldError.checkNotNull(
                  hasError, 'LoginState', 'hasError'),
              error: error,
              loginData: _loginData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginData';
        _loginData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
