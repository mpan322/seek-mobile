// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_signature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftSignature extends NftSignature {
  @override
  final String v;
  @override
  final String r;
  @override
  final String s;

  factory _$NftSignature([void Function(NftSignatureBuilder)? updates]) =>
      (NftSignatureBuilder()..update(updates))._build();

  _$NftSignature._({required this.v, required this.r, required this.s})
      : super._();
  @override
  NftSignature rebuild(void Function(NftSignatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftSignatureBuilder toBuilder() => NftSignatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftSignature &&
        v == other.v &&
        r == other.r &&
        s == other.s;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, r.hashCode);
    _$hash = $jc(_$hash, s.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftSignature')
          ..add('v', v)
          ..add('r', r)
          ..add('s', s))
        .toString();
  }
}

class NftSignatureBuilder
    implements Builder<NftSignature, NftSignatureBuilder> {
  _$NftSignature? _$v;

  String? _v;
  String? get v => _$this._v;
  set v(String? v) => _$this._v = v;

  String? _r;
  String? get r => _$this._r;
  set r(String? r) => _$this._r = r;

  String? _s;
  String? get s => _$this._s;
  set s(String? s) => _$this._s = s;

  NftSignatureBuilder() {
    NftSignature._defaults(this);
  }

  NftSignatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _v = $v.v;
      _r = $v.r;
      _s = $v.s;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftSignature other) {
    _$v = other as _$NftSignature;
  }

  @override
  void update(void Function(NftSignatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftSignature build() => _build();

  _$NftSignature _build() {
    final _$result = _$v ??
        _$NftSignature._(
          v: BuiltValueNullFieldError.checkNotNull(v, r'NftSignature', 'v'),
          r: BuiltValueNullFieldError.checkNotNull(r, r'NftSignature', 'r'),
          s: BuiltValueNullFieldError.checkNotNull(s, r'NftSignature', 's'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
