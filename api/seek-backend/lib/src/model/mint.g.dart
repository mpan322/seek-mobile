// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MintAtTypeEnum _$mintAtTypeEnum_mint = const MintAtTypeEnum._('mint');

MintAtTypeEnum _$mintAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'mint':
      return _$mintAtTypeEnum_mint;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MintAtTypeEnum> _$mintAtTypeEnumValues =
    BuiltSet<MintAtTypeEnum>(const <MintAtTypeEnum>[
  _$mintAtTypeEnum_mint,
]);

Serializer<MintAtTypeEnum> _$mintAtTypeEnumSerializer =
    _$MintAtTypeEnumSerializer();

class _$MintAtTypeEnumSerializer
    implements PrimitiveSerializer<MintAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mint': 'mint',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mint': 'mint',
  };

  @override
  final Iterable<Type> types = const <Type>[MintAtTypeEnum];
  @override
  final String wireName = 'MintAtTypeEnum';

  @override
  Object serialize(Serializers serializers, MintAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MintAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MintAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Mint extends Mint {
  @override
  final MintAtTypeEnum? atType;

  factory _$Mint([void Function(MintBuilder)? updates]) =>
      (MintBuilder()..update(updates))._build();

  _$Mint._({this.atType}) : super._();
  @override
  Mint rebuild(void Function(MintBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MintBuilder toBuilder() => MintBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mint && atType == other.atType;
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
    return (newBuiltValueToStringHelper(r'Mint')..add('atType', atType))
        .toString();
  }
}

class MintBuilder implements Builder<Mint, MintBuilder> {
  _$Mint? _$v;

  MintAtTypeEnum? _atType;
  MintAtTypeEnum? get atType => _$this._atType;
  set atType(MintAtTypeEnum? atType) => _$this._atType = atType;

  MintBuilder() {
    Mint._defaults(this);
  }

  MintBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Mint other) {
    _$v = other as _$Mint;
  }

  @override
  void update(void Function(MintBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Mint build() => _build();

  _$Mint _build() {
    final _$result = _$v ??
        _$Mint._(
          atType: atType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
