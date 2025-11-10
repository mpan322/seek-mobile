// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_asset_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlowAssetTypeAssetClassEnum _$flowAssetTypeAssetClassEnum_FLOW =
    const FlowAssetTypeAssetClassEnum._('FLOW');

FlowAssetTypeAssetClassEnum _$flowAssetTypeAssetClassEnumValueOf(String name) {
  switch (name) {
    case 'FLOW':
      return _$flowAssetTypeAssetClassEnum_FLOW;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlowAssetTypeAssetClassEnum>
    _$flowAssetTypeAssetClassEnumValues =
    BuiltSet<FlowAssetTypeAssetClassEnum>(const <FlowAssetTypeAssetClassEnum>[
  _$flowAssetTypeAssetClassEnum_FLOW,
]);

Serializer<FlowAssetTypeAssetClassEnum>
    _$flowAssetTypeAssetClassEnumSerializer =
    _$FlowAssetTypeAssetClassEnumSerializer();

class _$FlowAssetTypeAssetClassEnumSerializer
    implements PrimitiveSerializer<FlowAssetTypeAssetClassEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FLOW': 'FLOW',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FLOW': 'FLOW',
  };

  @override
  final Iterable<Type> types = const <Type>[FlowAssetTypeAssetClassEnum];
  @override
  final String wireName = 'FlowAssetTypeAssetClassEnum';

  @override
  Object serialize(Serializers serializers, FlowAssetTypeAssetClassEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlowAssetTypeAssetClassEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlowAssetTypeAssetClassEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlowAssetType extends FlowAssetType {
  @override
  final FlowAssetTypeAssetClassEnum assetClass;

  factory _$FlowAssetType([void Function(FlowAssetTypeBuilder)? updates]) =>
      (FlowAssetTypeBuilder()..update(updates))._build();

  _$FlowAssetType._({required this.assetClass}) : super._();
  @override
  FlowAssetType rebuild(void Function(FlowAssetTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowAssetTypeBuilder toBuilder() => FlowAssetTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowAssetType && assetClass == other.assetClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowAssetType')
          ..add('assetClass', assetClass))
        .toString();
  }
}

class FlowAssetTypeBuilder
    implements Builder<FlowAssetType, FlowAssetTypeBuilder> {
  _$FlowAssetType? _$v;

  FlowAssetTypeAssetClassEnum? _assetClass;
  FlowAssetTypeAssetClassEnum? get assetClass => _$this._assetClass;
  set assetClass(FlowAssetTypeAssetClassEnum? assetClass) =>
      _$this._assetClass = assetClass;

  FlowAssetTypeBuilder() {
    FlowAssetType._defaults(this);
  }

  FlowAssetTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetClass = $v.assetClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowAssetType other) {
    _$v = other as _$FlowAssetType;
  }

  @override
  void update(void Function(FlowAssetTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowAssetType build() => _build();

  _$FlowAssetType _build() {
    final _$result = _$v ??
        _$FlowAssetType._(
          assetClass: BuiltValueNullFieldError.checkNotNull(
              assetClass, r'FlowAssetType', 'assetClass'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
