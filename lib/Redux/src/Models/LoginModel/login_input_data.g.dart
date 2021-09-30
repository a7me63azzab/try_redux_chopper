// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_login_input_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltLoginInputData> _$builtLoginInputDataSerializer =
    new _$BuiltLoginInputDataSerializer();

class _$BuiltLoginInputDataSerializer
    implements StructuredSerializer<BuiltLoginInputData> {
  @override
  final Iterable<Type> types = const [
    BuiltLoginInputData,
    _$BuiltLoginInputData
  ];
  @override
  final String wireName = 'BuiltLoginInputData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltLoginInputData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'identifier',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'device_type',
      serializers.serialize(object.device_type,
          specifiedType: const FullType(String)),
      'device_token',
      serializers.serialize(object.device_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltLoginInputData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLoginInputDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_type':
          result.device_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_token':
          result.device_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltLoginInputData extends BuiltLoginInputData {
  @override
  final String identifier;
  @override
  final String password;
  @override
  final String device_type;
  @override
  final String device_token;

  factory _$BuiltLoginInputData(
          [void Function(BuiltLoginInputDataBuilder)? updates]) =>
      (new BuiltLoginInputDataBuilder()..update(updates)).build();

  _$BuiltLoginInputData._(
      {required this.identifier,
      required this.password,
      required this.device_type,
      required this.device_token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        identifier, 'BuiltLoginInputData', 'identifier');
    BuiltValueNullFieldError.checkNotNull(
        password, 'BuiltLoginInputData', 'password');
    BuiltValueNullFieldError.checkNotNull(
        device_type, 'BuiltLoginInputData', 'device_type');
    BuiltValueNullFieldError.checkNotNull(
        device_token, 'BuiltLoginInputData', 'device_token');
  }

  @override
  BuiltLoginInputData rebuild(
          void Function(BuiltLoginInputDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLoginInputDataBuilder toBuilder() =>
      new BuiltLoginInputDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLoginInputData &&
        identifier == other.identifier &&
        password == other.password &&
        device_type == other.device_type &&
        device_token == other.device_token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, identifier.hashCode), password.hashCode),
            device_type.hashCode),
        device_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltLoginInputData')
          ..add('identifier', identifier)
          ..add('password', password)
          ..add('device_type', device_type)
          ..add('device_token', device_token))
        .toString();
  }
}

class BuiltLoginInputDataBuilder
    implements Builder<BuiltLoginInputData, BuiltLoginInputDataBuilder> {
  _$BuiltLoginInputData? _$v;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _device_type;
  String? get device_type => _$this._device_type;
  set device_type(String? device_type) => _$this._device_type = device_type;

  String? _device_token;
  String? get device_token => _$this._device_token;
  set device_token(String? device_token) => _$this._device_token = device_token;

  BuiltLoginInputDataBuilder();

  BuiltLoginInputDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identifier = $v.identifier;
      _password = $v.password;
      _device_type = $v.device_type;
      _device_token = $v.device_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLoginInputData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltLoginInputData;
  }

  @override
  void update(void Function(BuiltLoginInputDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLoginInputData build() {
    final _$result = _$v ??
        new _$BuiltLoginInputData._(
            identifier: BuiltValueNullFieldError.checkNotNull(
                identifier, 'BuiltLoginInputData', 'identifier'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'BuiltLoginInputData', 'password'),
            device_type: BuiltValueNullFieldError.checkNotNull(
                device_type, 'BuiltLoginInputData', 'device_type'),
            device_token: BuiltValueNullFieldError.checkNotNull(
                device_token, 'BuiltLoginInputData', 'device_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
