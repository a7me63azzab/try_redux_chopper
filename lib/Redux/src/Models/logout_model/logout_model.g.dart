// GENERATED CODE - DO NOT MODIFY BY HAND

part of logout_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogoutModel> _$logoutModelSerializer = new _$LogoutModelSerializer();

class _$LogoutModelSerializer implements StructuredSerializer<LogoutModel> {
  @override
  final Iterable<Type> types = const [LogoutModel, _$LogoutModel];
  @override
  final String wireName = 'LogoutModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogoutModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Null)));
    }
    return result;
  }

  @override
  LogoutModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoutModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(Null)) as Null?;
          break;
      }
    }

    return result.build();
  }
}

class _$LogoutModel extends LogoutModel {
  @override
  final String status;
  @override
  final String message;
  @override
  final Null? data;

  factory _$LogoutModel([void Function(LogoutModelBuilder)? updates]) =>
      (new LogoutModelBuilder()..update(updates)).build();

  _$LogoutModel._({required this.status, required this.message, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'LogoutModel', 'status');
    BuiltValueNullFieldError.checkNotNull(message, 'LogoutModel', 'message');
  }

  @override
  LogoutModel rebuild(void Function(LogoutModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutModelBuilder toBuilder() => new LogoutModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutModel &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogoutModel')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class LogoutModelBuilder implements Builder<LogoutModel, LogoutModelBuilder> {
  _$LogoutModel? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Null? _data;
  Null? get data => _$this._data;
  set data(Null? data) => _$this._data = data;

  LogoutModelBuilder();

  LogoutModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutModel;
  }

  @override
  void update(void Function(LogoutModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogoutModel build() {
    final _$result = _$v ??
        new _$LogoutModel._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'LogoutModel', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'LogoutModel', 'message'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
