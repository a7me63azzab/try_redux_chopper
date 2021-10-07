// GENERATED CODE - DO NOT MODIFY BY HAND

part of logout_data_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogoutDataModel> _$logoutDataModelSerializer =
    new _$LogoutDataModelSerializer();

class _$LogoutDataModelSerializer
    implements StructuredSerializer<LogoutDataModel> {
  @override
  final Iterable<Type> types = const [LogoutDataModel, _$LogoutDataModel];
  @override
  final String wireName = 'LogoutDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogoutDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
  LogoutDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoutDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$LogoutDataModel extends LogoutDataModel {
  @override
  final String device_type;
  @override
  final String device_token;

  factory _$LogoutDataModel([void Function(LogoutDataModelBuilder)? updates]) =>
      (new LogoutDataModelBuilder()..update(updates)).build();

  _$LogoutDataModel._({required this.device_type, required this.device_token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        device_type, 'LogoutDataModel', 'device_type');
    BuiltValueNullFieldError.checkNotNull(
        device_token, 'LogoutDataModel', 'device_token');
  }

  @override
  LogoutDataModel rebuild(void Function(LogoutDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutDataModelBuilder toBuilder() =>
      new LogoutDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutDataModel &&
        device_type == other.device_type &&
        device_token == other.device_token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, device_type.hashCode), device_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogoutDataModel')
          ..add('device_type', device_type)
          ..add('device_token', device_token))
        .toString();
  }
}

class LogoutDataModelBuilder
    implements Builder<LogoutDataModel, LogoutDataModelBuilder> {
  _$LogoutDataModel? _$v;

  String? _device_type;
  String? get device_type => _$this._device_type;
  set device_type(String? device_type) => _$this._device_type = device_type;

  String? _device_token;
  String? get device_token => _$this._device_token;
  set device_token(String? device_token) => _$this._device_token = device_token;

  LogoutDataModelBuilder();

  LogoutDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _device_type = $v.device_type;
      _device_token = $v.device_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutDataModel;
  }

  @override
  void update(void Function(LogoutDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogoutDataModel build() {
    final _$result = _$v ??
        new _$LogoutDataModel._(
            device_type: BuiltValueNullFieldError.checkNotNull(
                device_type, 'LogoutDataModel', 'device_type'),
            device_token: BuiltValueNullFieldError.checkNotNull(
                device_token, 'LogoutDataModel', 'device_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
