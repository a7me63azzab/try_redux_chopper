// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltErrorResponse> _$builtErrorResponseSerializer =
    new _$BuiltErrorResponseSerializer();

class _$BuiltErrorResponseSerializer
    implements StructuredSerializer<BuiltErrorResponse> {
  @override
  final Iterable<Type> types = const [BuiltErrorResponse, _$BuiltErrorResponse];
  @override
  final String wireName = 'BuiltErrorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltErrorResponse object,
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
  BuiltErrorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltErrorResponseBuilder();

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

class _$BuiltErrorResponse extends BuiltErrorResponse {
  @override
  final String status;
  @override
  final String message;
  @override
  final Null? data;

  factory _$BuiltErrorResponse(
          [void Function(BuiltErrorResponseBuilder)? updates]) =>
      (new BuiltErrorResponseBuilder()..update(updates)).build();

  _$BuiltErrorResponse._(
      {required this.status, required this.message, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, 'BuiltErrorResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        message, 'BuiltErrorResponse', 'message');
  }

  @override
  BuiltErrorResponse rebuild(
          void Function(BuiltErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltErrorResponseBuilder toBuilder() =>
      new BuiltErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltErrorResponse &&
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
    return (newBuiltValueToStringHelper('BuiltErrorResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class BuiltErrorResponseBuilder
    implements Builder<BuiltErrorResponse, BuiltErrorResponseBuilder> {
  _$BuiltErrorResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Null? _data;
  Null? get data => _$this._data;
  set data(Null? data) => _$this._data = data;

  BuiltErrorResponseBuilder();

  BuiltErrorResponseBuilder get _$this {
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
  void replace(BuiltErrorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltErrorResponse;
  }

  @override
  void update(void Function(BuiltErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltErrorResponse build() {
    final _$result = _$v ??
        new _$BuiltErrorResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'BuiltErrorResponse', 'status'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'BuiltErrorResponse', 'message'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
