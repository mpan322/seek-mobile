// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Activities extends Activities {
  @override
  final BuiltList<Activity> items;
  @override
  final String? continuation;

  factory _$Activities([void Function(ActivitiesBuilder)? updates]) =>
      (ActivitiesBuilder()..update(updates))._build();

  _$Activities._({required this.items, this.continuation}) : super._();
  @override
  Activities rebuild(void Function(ActivitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivitiesBuilder toBuilder() => ActivitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activities &&
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
    return (newBuiltValueToStringHelper(r'Activities')
          ..add('items', items)
          ..add('continuation', continuation))
        .toString();
  }
}

class ActivitiesBuilder implements Builder<Activities, ActivitiesBuilder> {
  _$Activities? _$v;

  ListBuilder<Activity>? _items;
  ListBuilder<Activity> get items => _$this._items ??= ListBuilder<Activity>();
  set items(ListBuilder<Activity>? items) => _$this._items = items;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  ActivitiesBuilder() {
    Activities._defaults(this);
  }

  ActivitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activities other) {
    _$v = other as _$Activities;
  }

  @override
  void update(void Function(ActivitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Activities build() => _build();

  _$Activities _build() {
    _$Activities _$result;
    try {
      _$result = _$v ??
          _$Activities._(
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
            r'Activities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
