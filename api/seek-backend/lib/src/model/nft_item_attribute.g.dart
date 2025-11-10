// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_attribute.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftItemAttribute extends NftItemAttribute {
  @override
  final String key;
  @override
  final String? value;

  factory _$NftItemAttribute(
          [void Function(NftItemAttributeBuilder)? updates]) =>
      (NftItemAttributeBuilder()..update(updates))._build();

  _$NftItemAttribute._({required this.key, this.value}) : super._();
  @override
  NftItemAttribute rebuild(void Function(NftItemAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemAttributeBuilder toBuilder() =>
      NftItemAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemAttribute &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItemAttribute')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class NftItemAttributeBuilder
    implements Builder<NftItemAttribute, NftItemAttributeBuilder> {
  _$NftItemAttribute? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  NftItemAttributeBuilder() {
    NftItemAttribute._defaults(this);
  }

  NftItemAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemAttribute other) {
    _$v = other as _$NftItemAttribute;
  }

  @override
  void update(void Function(NftItemAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemAttribute build() => _build();

  _$NftItemAttribute _build() {
    final _$result = _$v ??
        _$NftItemAttribute._(
          key: BuiltValueNullFieldError.checkNotNull(
              key, r'NftItemAttribute', 'key'),
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
