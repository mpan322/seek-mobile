// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_activities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftActivities extends NftActivities {
  @override
  final BuiltList<NftActivity> items;
  @override
  final String? continuation;

  factory _$NftActivities([void Function(NftActivitiesBuilder)? updates]) =>
      (NftActivitiesBuilder()..update(updates))._build();

  _$NftActivities._({required this.items, this.continuation}) : super._();
  @override
  NftActivities rebuild(void Function(NftActivitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftActivitiesBuilder toBuilder() => NftActivitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftActivities &&
        items == other.items &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftActivities')
          ..add('items', items)
          ..add('continuation', continuation))
        .toString();
  }
}

class NftActivitiesBuilder
    implements Builder<NftActivities, NftActivitiesBuilder> {
  _$NftActivities? _$v;

  ListBuilder<NftActivity>? _items;
  ListBuilder<NftActivity> get items =>
      _$this._items ??= ListBuilder<NftActivity>();
  set items(ListBuilder<NftActivity>? items) => _$this._items = items;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  NftActivitiesBuilder() {
    NftActivities._defaults(this);
  }

  NftActivitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftActivities other) {
    _$v = other as _$NftActivities;
  }

  @override
  void update(void Function(NftActivitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftActivities build() => _build();

  _$NftActivities _build() {
    _$NftActivities _$result;
    try {
      _$result = _$v ??
          _$NftActivities._(
            items: items.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftActivities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
