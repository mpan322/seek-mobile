// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lock.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Lock extends Lock {
  @override
  final String id;
  @override
  final String itemId;
  @override
  final String content;
  @override
  final String author;
  @override
  final String? signature;
  @override
  final DateTime? unlockDate;
  @override
  final int? version;

  factory _$Lock([void Function(LockBuilder)? updates]) =>
      (LockBuilder()..update(updates))._build();

  _$Lock._(
      {required this.id,
      required this.itemId,
      required this.content,
      required this.author,
      this.signature,
      this.unlockDate,
      this.version})
      : super._();
  @override
  Lock rebuild(void Function(LockBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LockBuilder toBuilder() => LockBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lock &&
        id == other.id &&
        itemId == other.itemId &&
        content == other.content &&
        author == other.author &&
        signature == other.signature &&
        unlockDate == other.unlockDate &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, unlockDate.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Lock')
          ..add('id', id)
          ..add('itemId', itemId)
          ..add('content', content)
          ..add('author', author)
          ..add('signature', signature)
          ..add('unlockDate', unlockDate)
          ..add('version', version))
        .toString();
  }
}

class LockBuilder implements Builder<Lock, LockBuilder> {
  _$Lock? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  DateTime? _unlockDate;
  DateTime? get unlockDate => _$this._unlockDate;
  set unlockDate(DateTime? unlockDate) => _$this._unlockDate = unlockDate;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  LockBuilder() {
    Lock._defaults(this);
  }

  LockBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _itemId = $v.itemId;
      _content = $v.content;
      _author = $v.author;
      _signature = $v.signature;
      _unlockDate = $v.unlockDate;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Lock other) {
    _$v = other as _$Lock;
  }

  @override
  void update(void Function(LockBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Lock build() => _build();

  _$Lock _build() {
    final _$result = _$v ??
        _$Lock._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Lock', 'id'),
          itemId:
              BuiltValueNullFieldError.checkNotNull(itemId, r'Lock', 'itemId'),
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'Lock', 'content'),
          author:
              BuiltValueNullFieldError.checkNotNull(author, r'Lock', 'author'),
          signature: signature,
          unlockDate: unlockDate,
          version: version,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
