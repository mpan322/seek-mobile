// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_media_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftMediaMeta extends NftMediaMeta {
  @override
  final String type;
  @override
  final int? width;
  @override
  final int? height;

  factory _$NftMediaMeta([void Function(NftMediaMetaBuilder)? updates]) =>
      (NftMediaMetaBuilder()..update(updates))._build();

  _$NftMediaMeta._({required this.type, this.width, this.height}) : super._();
  @override
  NftMediaMeta rebuild(void Function(NftMediaMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftMediaMetaBuilder toBuilder() => NftMediaMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftMediaMeta &&
        type == other.type &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftMediaMeta')
          ..add('type', type)
          ..add('width', width)
          ..add('height', height))
        .toString();
  }
}

class NftMediaMetaBuilder
    implements Builder<NftMediaMeta, NftMediaMetaBuilder> {
  _$NftMediaMeta? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  NftMediaMetaBuilder() {
    NftMediaMeta._defaults(this);
  }

  NftMediaMetaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _width = $v.width;
      _height = $v.height;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftMediaMeta other) {
    _$v = other as _$NftMediaMeta;
  }

  @override
  void update(void Function(NftMediaMetaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftMediaMeta build() => _build();

  _$NftMediaMeta _build() {
    final _$result = _$v ??
        _$NftMediaMeta._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'NftMediaMeta', 'type'),
          width: width,
          height: height,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
