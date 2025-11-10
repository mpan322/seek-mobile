// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftMedia extends NftMedia {
  @override
  final BuiltMap<String, String> url;
  @override
  final BuiltMap<String, NftMediaMeta> meta;

  factory _$NftMedia([void Function(NftMediaBuilder)? updates]) =>
      (NftMediaBuilder()..update(updates))._build();

  _$NftMedia._({required this.url, required this.meta}) : super._();
  @override
  NftMedia rebuild(void Function(NftMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftMediaBuilder toBuilder() => NftMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftMedia && url == other.url && meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftMedia')
          ..add('url', url)
          ..add('meta', meta))
        .toString();
  }
}

class NftMediaBuilder implements Builder<NftMedia, NftMediaBuilder> {
  _$NftMedia? _$v;

  MapBuilder<String, String>? _url;
  MapBuilder<String, String> get url =>
      _$this._url ??= MapBuilder<String, String>();
  set url(MapBuilder<String, String>? url) => _$this._url = url;

  MapBuilder<String, NftMediaMeta>? _meta;
  MapBuilder<String, NftMediaMeta> get meta =>
      _$this._meta ??= MapBuilder<String, NftMediaMeta>();
  set meta(MapBuilder<String, NftMediaMeta>? meta) => _$this._meta = meta;

  NftMediaBuilder() {
    NftMedia._defaults(this);
  }

  NftMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url.toBuilder();
      _meta = $v.meta.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftMedia other) {
    _$v = other as _$NftMedia;
  }

  @override
  void update(void Function(NftMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftMedia build() => _build();

  _$NftMedia _build() {
    _$NftMedia _$result;
    try {
      _$result = _$v ??
          _$NftMedia._(
            url: url.build(),
            meta: meta.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        url.build();
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftMedia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
