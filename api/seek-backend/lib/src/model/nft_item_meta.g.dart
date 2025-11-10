// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_item_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftItemMeta extends NftItemMeta {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<NftItemAttribute>? attributes;
  @override
  final NftMedia? image;
  @override
  final NftMedia? animation;

  factory _$NftItemMeta([void Function(NftItemMetaBuilder)? updates]) =>
      (NftItemMetaBuilder()..update(updates))._build();

  _$NftItemMeta._(
      {required this.name,
      this.description,
      this.attributes,
      this.image,
      this.animation})
      : super._();
  @override
  NftItemMeta rebuild(void Function(NftItemMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemMetaBuilder toBuilder() => NftItemMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItemMeta &&
        name == other.name &&
        description == other.description &&
        attributes == other.attributes &&
        image == other.image &&
        animation == other.animation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, animation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItemMeta')
          ..add('name', name)
          ..add('description', description)
          ..add('attributes', attributes)
          ..add('image', image)
          ..add('animation', animation))
        .toString();
  }
}

class NftItemMetaBuilder implements Builder<NftItemMeta, NftItemMetaBuilder> {
  _$NftItemMeta? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<NftItemAttribute>? _attributes;
  ListBuilder<NftItemAttribute> get attributes =>
      _$this._attributes ??= ListBuilder<NftItemAttribute>();
  set attributes(ListBuilder<NftItemAttribute>? attributes) =>
      _$this._attributes = attributes;

  NftMediaBuilder? _image;
  NftMediaBuilder get image => _$this._image ??= NftMediaBuilder();
  set image(NftMediaBuilder? image) => _$this._image = image;

  NftMediaBuilder? _animation;
  NftMediaBuilder get animation => _$this._animation ??= NftMediaBuilder();
  set animation(NftMediaBuilder? animation) => _$this._animation = animation;

  NftItemMetaBuilder() {
    NftItemMeta._defaults(this);
  }

  NftItemMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _attributes = $v.attributes?.toBuilder();
      _image = $v.image?.toBuilder();
      _animation = $v.animation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItemMeta other) {
    _$v = other as _$NftItemMeta;
  }

  @override
  void update(void Function(NftItemMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItemMeta build() => _build();

  _$NftItemMeta _build() {
    _$NftItemMeta _$result;
    try {
      _$result = _$v ??
          _$NftItemMeta._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NftItemMeta', 'name'),
            description: description,
            attributes: _attributes?.build(),
            image: _image?.build(),
            animation: _animation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'animation';
        _animation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftItemMeta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
