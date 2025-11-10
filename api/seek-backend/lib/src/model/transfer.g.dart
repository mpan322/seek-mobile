// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransferAtTypeEnum _$transferAtTypeEnum_transfer =
    const TransferAtTypeEnum._('transfer');

TransferAtTypeEnum _$transferAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'transfer':
      return _$transferAtTypeEnum_transfer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TransferAtTypeEnum> _$transferAtTypeEnumValues =
    BuiltSet<TransferAtTypeEnum>(const <TransferAtTypeEnum>[
  _$transferAtTypeEnum_transfer,
]);

Serializer<TransferAtTypeEnum> _$transferAtTypeEnumSerializer =
    _$TransferAtTypeEnumSerializer();

class _$TransferAtTypeEnumSerializer
    implements PrimitiveSerializer<TransferAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'transfer': 'transfer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'transfer': 'transfer',
  };

  @override
  final Iterable<Type> types = const <Type>[TransferAtTypeEnum];
  @override
  final String wireName = 'TransferAtTypeEnum';

  @override
  Object serialize(Serializers serializers, TransferAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransferAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransferAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Transfer extends Transfer {
  @override
  final TransferAtTypeEnum atType;
  @override
  final String from;

  factory _$Transfer([void Function(TransferBuilder)? updates]) =>
      (TransferBuilder()..update(updates))._build();

  _$Transfer._({required this.atType, required this.from}) : super._();
  @override
  Transfer rebuild(void Function(TransferBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransferBuilder toBuilder() => TransferBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transfer && atType == other.atType && from == other.from;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Transfer')
          ..add('atType', atType)
          ..add('from', from))
        .toString();
  }
}

class TransferBuilder implements Builder<Transfer, TransferBuilder> {
  _$Transfer? _$v;

  TransferAtTypeEnum? _atType;
  TransferAtTypeEnum? get atType => _$this._atType;
  set atType(TransferAtTypeEnum? atType) => _$this._atType = atType;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  TransferBuilder() {
    Transfer._defaults(this);
  }

  TransferBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _from = $v.from;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Transfer other) {
    _$v = other as _$Transfer;
  }

  @override
  void update(void Function(TransferBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Transfer build() => _build();

  _$Transfer _build() {
    final _$result = _$v ??
        _$Transfer._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'Transfer', 'atType'),
          from:
              BuiltValueNullFieldError.checkNotNull(from, r'Transfer', 'from'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
