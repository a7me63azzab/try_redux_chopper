// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltPost> _$builtPostSerializer = new _$BuiltPostSerializer();

class _$BuiltPostSerializer implements StructuredSerializer<BuiltPost> {
  @override
  final Iterable<Type> types = const [BuiltPost, _$BuiltPost];
  @override
  final String wireName = 'BuiltPost';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuiltPost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BuiltPost deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltPostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltPost extends BuiltPost {
  @override
  final int? id;
  @override
  final String title;
  @override
  final String body;

  factory _$BuiltPost([void Function(BuiltPostBuilder)? updates]) =>
      (new BuiltPostBuilder()..update(updates)).build();

  _$BuiltPost._({this.id, required this.title, required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'BuiltPost', 'title');
    BuiltValueNullFieldError.checkNotNull(body, 'BuiltPost', 'body');
  }

  @override
  BuiltPost rebuild(void Function(BuiltPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltPostBuilder toBuilder() => new BuiltPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltPost &&
        id == other.id &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), title.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltPost')
          ..add('id', id)
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class BuiltPostBuilder implements Builder<BuiltPost, BuiltPostBuilder> {
  _$BuiltPost? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  BuiltPostBuilder();

  BuiltPostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltPost;
  }

  @override
  void update(void Function(BuiltPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltPost build() {
    final _$result = _$v ??
        new _$BuiltPost._(
            id: id,
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'BuiltPost', 'title'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, 'BuiltPost', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
