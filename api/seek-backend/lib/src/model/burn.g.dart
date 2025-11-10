// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burn.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BurnAtTypeEnum _$burnAtTypeEnum_burn = const BurnAtTypeEnum._('burn');

BurnAtTypeEnum _$burnAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'burn':
      return _$burnAtTypeEnum_burn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BurnAtTypeEnum> _$burnAtTypeEnumValues =
    BuiltSet<BurnAtTypeEnum>(const <BurnAtTypeEnum>[
  _$burnAtTypeEnum_burn,
]);

Serializer<BurnAtTypeEnum> _$burnAtTypeEnumSerializer =
    _$BurnAtTypeEnumSerializer();

class _$BurnAtTypeEnumSerializer
    implements PrimitiveSerializer<BurnAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'burn': 'burn',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'burn': 'burn',
  };

  @override
  final Iterable<Type> types = const <Type>[BurnAtTypeEnum];
  @override
  final String wireName = 'BurnAtTypeEnum';

  @override
  Object serialize(Serializers serializers, BurnAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BurnAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BurnAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Burn extends Burn {
  @override
  final BurnAtTypeEnum atType;

  factory _$Burn([void Function(BurnBuilder)? updates]) =>
      (BurnBuilder()..update(updates))._build();

  _$Burn._({required this.atType}) : super._();
  @override
  Burn rebuild(void Function(BurnBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BurnBuilder toBuilder() => BurnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Burn && atType == other.atType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Burn')..add('atType', atType))
        .toString();
  }
}

class BurnBuilder implements Builder<Burn, BurnBuilder> {
  _$Burn? _$v;

  BurnAtTypeEnum? _atType;
  BurnAtTypeEnum? get atType => _$this._atType;
  set atType(BurnAtTypeEnum? atType) => _$this._atType = atType;

  BurnBuilder() {
    Burn._defaults(this);
  }

  BurnBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Burn other) {
    _$v = other as _$Burn;
  }

  @override
  void update(void Function(BurnBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Burn build() => _build();

  _$Burn _build() {
    final _$result = _$v ??
        _$Burn._(
          atType:
              BuiltValueNullFieldError.checkNotNull(atType, r'Burn', 'atType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
