// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostState> _$postStateSerializer = new _$PostStateSerializer();

class _$PostStateSerializer implements StructuredSerializer<PostState> {
  @override
  final Iterable<Type> types = const [PostState, _$PostState];
  @override
  final String wireName = 'PostState';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostState object,
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
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltPost)));
    }
    return result;
  }

  @override
  PostState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostStateBuilder();

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
        case 'post':
          result.post.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltPost))! as BuiltPost);
          break;
      }
    }

    return result.build();
  }
}

class _$PostState extends PostState {
  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? error;
  @override
  final BuiltPost? post;

  factory _$PostState([void Function(PostStateBuilder)? updates]) =>
      (new PostStateBuilder()..update(updates)).build();

  _$PostState._(
      {required this.isLoading, required this.hasError, this.error, this.post})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'PostState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(hasError, 'PostState', 'hasError');
  }

  @override
  PostState rebuild(void Function(PostStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStateBuilder toBuilder() => new PostStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostState &&
        isLoading == other.isLoading &&
        hasError == other.hasError &&
        error == other.error &&
        post == other.post;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), hasError.hashCode), error.hashCode),
        post.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostState')
          ..add('isLoading', isLoading)
          ..add('hasError', hasError)
          ..add('error', error)
          ..add('post', post))
        .toString();
  }
}

class PostStateBuilder implements Builder<PostState, PostStateBuilder> {
  _$PostState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BuiltPostBuilder? _post;
  BuiltPostBuilder get post => _$this._post ??= new BuiltPostBuilder();
  set post(BuiltPostBuilder? post) => _$this._post = post;

  PostStateBuilder();

  PostStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _hasError = $v.hasError;
      _error = $v.error;
      _post = $v.post?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostState;
  }

  @override
  void update(void Function(PostStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostState build() {
    _$PostState _$result;
    try {
      _$result = _$v ??
          new _$PostState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'PostState', 'isLoading'),
              hasError: BuiltValueNullFieldError.checkNotNull(
                  hasError, 'PostState', 'hasError'),
              error: error,
              post: _post?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        _post?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
