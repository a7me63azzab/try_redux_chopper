// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of logout_state;

// // **************************************************************************
// // BuiltValueGenerator
// // **************************************************************************

// Serializer<LogoutState> _$logoutStateSerializer = new _$LogoutStateSerializer();

// class _$LogoutStateSerializer implements StructuredSerializer<LogoutState> {
//   @override
//   final Iterable<Type> types = const [LogoutState, _$LogoutState];
//   @override
//   final String wireName = 'LogoutState';

//   @override
//   Iterable<Object?> serialize(Serializers serializers, LogoutState object,
//       {FullType specifiedType = FullType.unspecified}) {
//     final result = <Object?>[
//       'isLoading',
//       serializers.serialize(object.isLoading,
//           specifiedType: const FullType(bool)),
//       'hasError',
//       serializers.serialize(object.hasError,
//           specifiedType: const FullType(bool)),
//     ];
//     Object? value;
//     value = object.error;
//     if (value != null) {
//       result
//         ..add('error')
//         ..add(serializers.serialize(value,
//             specifiedType: const FullType(String)));
//     }
//     value = object.logoutModel;
//     if (value != null) {
//       result
//         ..add('logoutModel')
//         ..add(serializers.serialize(value,
//             specifiedType: const FullType(LogoutModel)));
//     }
//     return result;
//   }

//   @override
//   LogoutState deserialize(Serializers serializers, Iterable<Object?> serialized,
//       {FullType specifiedType = FullType.unspecified}) {
//     final result = new LogoutStateBuilder();

//     final iterator = serialized.iterator;
//     while (iterator.moveNext()) {
//       final key = iterator.current as String;
//       iterator.moveNext();
//       final Object? value = iterator.current;
//       switch (key) {
//         case 'isLoading':
//           result.isLoading = serializers.deserialize(value,
//               specifiedType: const FullType(bool)) as bool;
//           break;
//         case 'hasError':
//           result.hasError = serializers.deserialize(value,
//               specifiedType: const FullType(bool)) as bool;
//           break;
//         case 'error':
//           result.error = serializers.deserialize(value,
//               specifiedType: const FullType(String)) as String?;
//           break;
//         case 'logoutModel':
//           result.logoutModel.replace(serializers.deserialize(value,
//               specifiedType: const FullType(LogoutModel))! as LogoutModel);
//           break;
//       }
//     }

//     return result.build();
//   }
// }

// class _$LogoutState extends LogoutState {
//   @override
//   final bool isLoading;
//   @override
//   final bool hasError;
//   @override
//   final String? error;
//   @override
//   final LogoutModel? logoutModel;

//   factory _$LogoutState([void Function(LogoutStateBuilder)? updates]) =>
//       (new LogoutStateBuilder()..update(updates)).build();

//   _$LogoutState._(
//       {required this.isLoading,
//       required this.hasError,
//       this.error,
//       this.logoutModel})
//       : super._() {
//     BuiltValueNullFieldError.checkNotNull(
//         isLoading, 'LogoutState', 'isLoading');
//     BuiltValueNullFieldError.checkNotNull(hasError, 'LogoutState', 'hasError');
//   }

//   @override
//   LogoutState rebuild(void Function(LogoutStateBuilder) updates) =>
//       (toBuilder()..update(updates)).build();

//   @override
//   LogoutStateBuilder toBuilder() => new LogoutStateBuilder()..replace(this);

//   @override
//   bool operator ==(Object other) {
//     if (identical(other, this)) return true;
//     return other is LogoutState &&
//         isLoading == other.isLoading &&
//         hasError == other.hasError &&
//         error == other.error &&
//         logoutModel == other.logoutModel;
//   }

//   @override
//   int get hashCode {
//     return $jf($jc(
//         $jc($jc($jc(0, isLoading.hashCode), hasError.hashCode), error.hashCode),
//         logoutModel.hashCode));
//   }

//   @override
//   String toString() {
//     return (newBuiltValueToStringHelper('LogoutState')
//           ..add('isLoading', isLoading)
//           ..add('hasError', hasError)
//           ..add('error', error)
//           ..add('logoutModel', logoutModel))
//         .toString();
//   }
// }

// class LogoutStateBuilder implements Builder<LogoutState, LogoutStateBuilder> {
//   _$LogoutState? _$v;

//   bool? _isLoading;
//   bool? get isLoading => _$this._isLoading;
//   set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

//   bool? _hasError;
//   bool? get hasError => _$this._hasError;
//   set hasError(bool? hasError) => _$this._hasError = hasError;

//   String? _error;
//   String? get error => _$this._error;
//   set error(String? error) => _$this._error = error;

//   LogoutModelBuilder? _logoutModel;
//   LogoutModelBuilder get logoutModel =>
//       _$this._logoutModel ??= new LogoutModelBuilder();
//   set logoutModel(LogoutModelBuilder? logoutModel) =>
//       _$this._logoutModel = logoutModel;

//   LogoutStateBuilder();

//   LogoutStateBuilder get _$this {
//     final $v = _$v;
//     if ($v != null) {
//       _isLoading = $v.isLoading;
//       _hasError = $v.hasError;
//       _error = $v.error;
//       _logoutModel = $v.logoutModel?.toBuilder();
//       _$v = null;
//     }
//     return this;
//   }

//   @override
//   void replace(LogoutState other) {
//     ArgumentError.checkNotNull(other, 'other');
//     _$v = other as _$LogoutState;
//   }

//   @override
//   void update(void Function(LogoutStateBuilder)? updates) {
//     if (updates != null) updates(this);
//   }

//   @override
//   _$LogoutState build() {
//     _$LogoutState _$result;
//     try {
//       _$result = _$v ??
//           new _$LogoutState._(
//               isLoading: BuiltValueNullFieldError.checkNotNull(
//                   isLoading, 'LogoutState', 'isLoading'),
//               hasError: BuiltValueNullFieldError.checkNotNull(
//                   hasError, 'LogoutState', 'hasError'),
//               error: error,
//               logoutModel: _logoutModel?.build());
//     } catch (_) {
//       late String _$failedField;
//       try {
//         _$failedField = 'logoutModel';
//         _logoutModel?.build();
//       } catch (e) {
//         throw new BuiltValueNestedFieldError(
//             'LogoutState', _$failedField, e.toString());
//       }
//       rethrow;
//     }
//     replace(_$result);
//     return _$result;
//   }
// }

// // ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
