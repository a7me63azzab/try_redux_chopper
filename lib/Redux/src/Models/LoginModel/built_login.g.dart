// GENERATED CODE - DO NOT MODIFY BY HAND

part of build_login;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltLogin> _$builtLoginSerializer = new _$BuiltLoginSerializer();
Serializer<BuiltUser> _$builtUserSerializer = new _$BuiltUserSerializer();
Serializer<BuiltBranch> _$builtBranchSerializer = new _$BuiltBranchSerializer();
Serializer<BuiltAuthToken> _$builtAuthTokenSerializer =
    new _$BuiltAuthTokenSerializer();

class _$BuiltLoginSerializer implements StructuredSerializer<BuiltLogin> {
  @override
  final Iterable<Type> types = const [BuiltLogin, _$BuiltLogin];
  @override
  final String wireName = 'BuiltLogin';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltLogin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltUser)),
    ];

    return result;
  }

  @override
  BuiltLogin deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltLoginBuilder();

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
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltUser))! as BuiltUser);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltUserSerializer implements StructuredSerializer<BuiltUser> {
  @override
  final Iterable<Type> types = const [BuiltUser, _$BuiltUser];
  @override
  final String wireName = 'BuiltUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'user_type',
      serializers.serialize(object.user_type,
          specifiedType: const FullType(String)),
      'identity_number',
      serializers.serialize(object.identity_number,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'is_notified',
      serializers.serialize(object.is_notified,
          specifiedType: const FullType(bool)),
      'branch',
      serializers.serialize(object.branch,
          specifiedType: const FullType(BuiltBranch)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'profile_image',
      serializers.serialize(object.profile_image,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(BuiltAuthToken)),
    ];

    return result;
  }

  @override
  BuiltUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_type':
          result.user_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'identity_number':
          result.identity_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'is_notified':
          result.is_notified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'branch':
          result.branch.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltBranch))! as BuiltBranch);
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_image':
          result.profile_image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltAuthToken))!
              as BuiltAuthToken);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltBranchSerializer implements StructuredSerializer<BuiltBranch> {
  @override
  final Iterable<Type> types = const [BuiltBranch, _$BuiltBranch];
  @override
  final String wireName = 'BuiltBranch';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltBranch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltBranch deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltBranchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAuthTokenSerializer
    implements StructuredSerializer<BuiltAuthToken> {
  @override
  final Iterable<Type> types = const [BuiltAuthToken, _$BuiltAuthToken];
  @override
  final String wireName = 'BuiltAuthToken';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltAuthToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token_type',
      serializers.serialize(object.token_type,
          specifiedType: const FullType(String)),
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltAuthToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAuthTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltLogin extends BuiltLogin {
  @override
  final String status;
  @override
  final String message;
  @override
  final BuiltUser data;

  factory _$BuiltLogin([void Function(BuiltLoginBuilder)? updates]) =>
      (new BuiltLoginBuilder()..update(updates)).build();

  _$BuiltLogin._(
      {required this.status, required this.message, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'BuiltLogin', 'status');
    BuiltValueNullFieldError.checkNotNull(message, 'BuiltLogin', 'message');
    BuiltValueNullFieldError.checkNotNull(data, 'BuiltLogin', 'data');
  }

  @override
  BuiltLogin rebuild(void Function(BuiltLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltLoginBuilder toBuilder() => new BuiltLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltLogin &&
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
    return (newBuiltValueToStringHelper('BuiltLogin')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class BuiltLoginBuilder implements Builder<BuiltLogin, BuiltLoginBuilder> {
  _$BuiltLogin? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BuiltUserBuilder? _data;
  BuiltUserBuilder get data => _$this._data ??= new BuiltUserBuilder();
  set data(BuiltUserBuilder? data) => _$this._data = data;

  BuiltLoginBuilder();

  BuiltLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltLogin;
  }

  @override
  void update(void Function(BuiltLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltLogin build() {
    _$BuiltLogin _$result;
    try {
      _$result = _$v ??
          new _$BuiltLogin._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'BuiltLogin', 'status'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'BuiltLogin', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltLogin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltUser extends BuiltUser {
  @override
  final int id;
  @override
  final String user_type;
  @override
  final String identity_number;
  @override
  final String username;
  @override
  final bool is_notified;
  @override
  final BuiltBranch branch;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String profile_image;
  @override
  final String created_at;
  @override
  final BuiltAuthToken token;

  factory _$BuiltUser([void Function(BuiltUserBuilder)? updates]) =>
      (new BuiltUserBuilder()..update(updates)).build();

  _$BuiltUser._(
      {required this.id,
      required this.user_type,
      required this.identity_number,
      required this.username,
      required this.is_notified,
      required this.branch,
      required this.address,
      required this.phone,
      required this.profile_image,
      required this.created_at,
      required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'BuiltUser', 'id');
    BuiltValueNullFieldError.checkNotNull(user_type, 'BuiltUser', 'user_type');
    BuiltValueNullFieldError.checkNotNull(
        identity_number, 'BuiltUser', 'identity_number');
    BuiltValueNullFieldError.checkNotNull(username, 'BuiltUser', 'username');
    BuiltValueNullFieldError.checkNotNull(
        is_notified, 'BuiltUser', 'is_notified');
    BuiltValueNullFieldError.checkNotNull(branch, 'BuiltUser', 'branch');
    BuiltValueNullFieldError.checkNotNull(address, 'BuiltUser', 'address');
    BuiltValueNullFieldError.checkNotNull(phone, 'BuiltUser', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        profile_image, 'BuiltUser', 'profile_image');
    BuiltValueNullFieldError.checkNotNull(
        created_at, 'BuiltUser', 'created_at');
    BuiltValueNullFieldError.checkNotNull(token, 'BuiltUser', 'token');
  }

  @override
  BuiltUser rebuild(void Function(BuiltUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserBuilder toBuilder() => new BuiltUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUser &&
        id == other.id &&
        user_type == other.user_type &&
        identity_number == other.identity_number &&
        username == other.username &&
        is_notified == other.is_notified &&
        branch == other.branch &&
        address == other.address &&
        phone == other.phone &&
        profile_image == other.profile_image &&
        created_at == other.created_at &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            user_type.hashCode),
                                        identity_number.hashCode),
                                    username.hashCode),
                                is_notified.hashCode),
                            branch.hashCode),
                        address.hashCode),
                    phone.hashCode),
                profile_image.hashCode),
            created_at.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUser')
          ..add('id', id)
          ..add('user_type', user_type)
          ..add('identity_number', identity_number)
          ..add('username', username)
          ..add('is_notified', is_notified)
          ..add('branch', branch)
          ..add('address', address)
          ..add('phone', phone)
          ..add('profile_image', profile_image)
          ..add('created_at', created_at)
          ..add('token', token))
        .toString();
  }
}

class BuiltUserBuilder implements Builder<BuiltUser, BuiltUserBuilder> {
  _$BuiltUser? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _user_type;
  String? get user_type => _$this._user_type;
  set user_type(String? user_type) => _$this._user_type = user_type;

  String? _identity_number;
  String? get identity_number => _$this._identity_number;
  set identity_number(String? identity_number) =>
      _$this._identity_number = identity_number;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  bool? _is_notified;
  bool? get is_notified => _$this._is_notified;
  set is_notified(bool? is_notified) => _$this._is_notified = is_notified;

  BuiltBranchBuilder? _branch;
  BuiltBranchBuilder get branch => _$this._branch ??= new BuiltBranchBuilder();
  set branch(BuiltBranchBuilder? branch) => _$this._branch = branch;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _profile_image;
  String? get profile_image => _$this._profile_image;
  set profile_image(String? profile_image) =>
      _$this._profile_image = profile_image;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  BuiltAuthTokenBuilder? _token;
  BuiltAuthTokenBuilder get token =>
      _$this._token ??= new BuiltAuthTokenBuilder();
  set token(BuiltAuthTokenBuilder? token) => _$this._token = token;

  BuiltUserBuilder();

  BuiltUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _user_type = $v.user_type;
      _identity_number = $v.identity_number;
      _username = $v.username;
      _is_notified = $v.is_notified;
      _branch = $v.branch.toBuilder();
      _address = $v.address;
      _phone = $v.phone;
      _profile_image = $v.profile_image;
      _created_at = $v.created_at;
      _token = $v.token.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltUser;
  }

  @override
  void update(void Function(BuiltUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUser build() {
    _$BuiltUser _$result;
    try {
      _$result = _$v ??
          new _$BuiltUser._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'BuiltUser', 'id'),
              user_type: BuiltValueNullFieldError.checkNotNull(
                  user_type, 'BuiltUser', 'user_type'),
              identity_number: BuiltValueNullFieldError.checkNotNull(
                  identity_number, 'BuiltUser', 'identity_number'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'BuiltUser', 'username'),
              is_notified: BuiltValueNullFieldError.checkNotNull(
                  is_notified, 'BuiltUser', 'is_notified'),
              branch: branch.build(),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'BuiltUser', 'address'),
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, 'BuiltUser', 'phone'),
              profile_image: BuiltValueNullFieldError.checkNotNull(
                  profile_image, 'BuiltUser', 'profile_image'),
              created_at: BuiltValueNullFieldError.checkNotNull(
                  created_at, 'BuiltUser', 'created_at'),
              token: token.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'branch';
        branch.build();

        _$failedField = 'token';
        token.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltBranch extends BuiltBranch {
  @override
  final int id;
  @override
  final String name;

  factory _$BuiltBranch([void Function(BuiltBranchBuilder)? updates]) =>
      (new BuiltBranchBuilder()..update(updates)).build();

  _$BuiltBranch._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'BuiltBranch', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'BuiltBranch', 'name');
  }

  @override
  BuiltBranch rebuild(void Function(BuiltBranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltBranchBuilder toBuilder() => new BuiltBranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltBranch && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltBranch')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BuiltBranchBuilder implements Builder<BuiltBranch, BuiltBranchBuilder> {
  _$BuiltBranch? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BuiltBranchBuilder();

  BuiltBranchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltBranch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltBranch;
  }

  @override
  void update(void Function(BuiltBranchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltBranch build() {
    final _$result = _$v ??
        new _$BuiltBranch._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'BuiltBranch', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'BuiltBranch', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$BuiltAuthToken extends BuiltAuthToken {
  @override
  final String token_type;
  @override
  final String access_token;

  factory _$BuiltAuthToken([void Function(BuiltAuthTokenBuilder)? updates]) =>
      (new BuiltAuthTokenBuilder()..update(updates)).build();

  _$BuiltAuthToken._({required this.token_type, required this.access_token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token_type, 'BuiltAuthToken', 'token_type');
    BuiltValueNullFieldError.checkNotNull(
        access_token, 'BuiltAuthToken', 'access_token');
  }

  @override
  BuiltAuthToken rebuild(void Function(BuiltAuthTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAuthTokenBuilder toBuilder() =>
      new BuiltAuthTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAuthToken &&
        token_type == other.token_type &&
        access_token == other.access_token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token_type.hashCode), access_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAuthToken')
          ..add('token_type', token_type)
          ..add('access_token', access_token))
        .toString();
  }
}

class BuiltAuthTokenBuilder
    implements Builder<BuiltAuthToken, BuiltAuthTokenBuilder> {
  _$BuiltAuthToken? _$v;

  String? _token_type;
  String? get token_type => _$this._token_type;
  set token_type(String? token_type) => _$this._token_type = token_type;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  BuiltAuthTokenBuilder();

  BuiltAuthTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token_type = $v.token_type;
      _access_token = $v.access_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAuthToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltAuthToken;
  }

  @override
  void update(void Function(BuiltAuthTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAuthToken build() {
    final _$result = _$v ??
        new _$BuiltAuthToken._(
            token_type: BuiltValueNullFieldError.checkNotNull(
                token_type, 'BuiltAuthToken', 'token_type'),
            access_token: BuiltValueNullFieldError.checkNotNull(
                access_token, 'BuiltAuthToken', 'access_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
