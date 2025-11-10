// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Asset extends Asset {
  @override
  final AssetType assetType;
  @override
  final String value;

  factory _$Asset([void Function(AssetBuilder)? updates]) =>
      (AssetBuilder()..update(updates))._build();

  _$Asset._({required this.assetType, required this.value}) : super._();
  @override
  Asset rebuild(void Function(AssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetBuilder toBuilder() => AssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Asset &&
        assetType == other.assetType &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assetType.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Asset')
          ..add('assetType', assetType)
          ..add('value', value))
        .toString();
  }
}

class AssetBuilder implements Builder<Asset, AssetBuilder> {
  _$Asset? _$v;

  AssetTypeBuilder? _assetType;
  AssetTypeBuilder get assetType => _$this._assetType ??= AssetTypeBuilder();
  set assetType(AssetTypeBuilder? assetType) => _$this._assetType = assetType;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AssetBuilder() {
    Asset._defaults(this);
  }

  AssetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetType = $v.assetType.toBuilder();
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Asset other) {
    _$v = other as _$Asset;
  }

  @override
  void update(void Function(AssetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Asset build() => _build();

  _$Asset _build() {
    _$Asset _$result;
    try {
      _$result = _$v ??
          _$Asset._(
            assetType: assetType.build(),
            value:
                BuiltValueNullFieldError.checkNotNull(value, r'Asset', 'value'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assetType';
        assetType.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Asset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
