// GENERATED CODE - DO NOT MODIFY BY HAND

part of build_user_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltUserData> _$builtUserDataSerializer =
    new _$BuiltUserDataSerializer();

class _$BuiltUserDataSerializer implements StructuredSerializer<BuiltUserData> {
  @override
  final Iterable<Type> types = const [BuiltUserData, _$BuiltUserData];
  @override
  final String wireName = 'BuiltUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
      'userPhone',
      serializers.serialize(object.userPhone,
          specifiedType: const FullType(String)),
      'userMail',
      serializers.serialize(object.userMail,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUserDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userPhone':
          result.userPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userMail':
          result.userMail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltUserData extends BuiltUserData {
  @override
  final int userId;
  @override
  final String userName;
  @override
  final String userPhone;
  @override
  final String userMail;

  factory _$BuiltUserData([void Function(BuiltUserDataBuilder)? updates]) =>
      (new BuiltUserDataBuilder()..update(updates)).build();

  _$BuiltUserData._(
      {required this.userId,
      required this.userName,
      required this.userPhone,
      required this.userMail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'BuiltUserData', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        userName, 'BuiltUserData', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        userPhone, 'BuiltUserData', 'userPhone');
    BuiltValueNullFieldError.checkNotNull(
        userMail, 'BuiltUserData', 'userMail');
  }

  @override
  BuiltUserData rebuild(void Function(BuiltUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserDataBuilder toBuilder() => new BuiltUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUserData &&
        userId == other.userId &&
        userName == other.userName &&
        userPhone == other.userPhone &&
        userMail == other.userMail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), userName.hashCode),
            userPhone.hashCode),
        userMail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUserData')
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('userPhone', userPhone)
          ..add('userMail', userMail))
        .toString();
  }
}

class BuiltUserDataBuilder
    implements Builder<BuiltUserData, BuiltUserDataBuilder> {
  _$BuiltUserData? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userPhone;
  String? get userPhone => _$this._userPhone;
  set userPhone(String? userPhone) => _$this._userPhone = userPhone;

  String? _userMail;
  String? get userMail => _$this._userMail;
  set userMail(String? userMail) => _$this._userMail = userMail;

  BuiltUserDataBuilder();

  BuiltUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _userName = $v.userName;
      _userPhone = $v.userPhone;
      _userMail = $v.userMail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltUserData;
  }

  @override
  void update(void Function(BuiltUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUserData build() {
    final _$result = _$v ??
        new _$BuiltUserData._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'BuiltUserData', 'userId'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, 'BuiltUserData', 'userName'),
            userPhone: BuiltValueNullFieldError.checkNotNull(
                userPhone, 'BuiltUserData', 'userPhone'),
            userMail: BuiltValueNullFieldError.checkNotNull(
                userMail, 'BuiltUserData', 'userMail'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
