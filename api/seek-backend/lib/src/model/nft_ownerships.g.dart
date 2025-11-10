// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_ownerships.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftOwnerships extends NftOwnerships {
  @override
  final int total;
  @override
  final BuiltList<NftOwnership> ownerships;
  @override
  final String? continuation;

  factory _$NftOwnerships([void Function(NftOwnershipsBuilder)? updates]) =>
      (NftOwnershipsBuilder()..update(updates))._build();

  _$NftOwnerships._(
      {required this.total, required this.ownerships, this.continuation})
      : super._();
  @override
  NftOwnerships rebuild(void Function(NftOwnershipsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftOwnershipsBuilder toBuilder() => NftOwnershipsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftOwnerships &&
        total == other.total &&
        ownerships == other.ownerships &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, ownerships.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftOwnerships')
          ..add('total', total)
          ..add('ownerships', ownerships)
          ..add('continuation', continuation))
        .toString();
  }
}

class NftOwnershipsBuilder
    implements Builder<NftOwnerships, NftOwnershipsBuilder> {
  _$NftOwnerships? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<NftOwnership>? _ownerships;
  ListBuilder<NftOwnership> get ownerships =>
      _$this._ownerships ??= ListBuilder<NftOwnership>();
  set ownerships(ListBuilder<NftOwnership>? ownerships) =>
      _$this._ownerships = ownerships;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  NftOwnershipsBuilder() {
    NftOwnerships._defaults(this);
  }

  NftOwnershipsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _ownerships = $v.ownerships.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftOwnerships other) {
    _$v = other as _$NftOwnerships;
  }

  @override
  void update(void Function(NftOwnershipsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftOwnerships build() => _build();

  _$NftOwnerships _build() {
    _$NftOwnerships _$result;
    try {
      _$result = _$v ??
          _$NftOwnerships._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'NftOwnerships', 'total'),
            ownerships: ownerships.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ownerships';
        ownerships.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftOwnerships', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
