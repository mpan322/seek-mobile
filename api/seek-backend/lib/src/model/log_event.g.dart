// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LogEventStatusEnum _$logEventStatusEnum_PENDING =
    const LogEventStatusEnum._('PENDING');
const LogEventStatusEnum _$logEventStatusEnum_CONFIRMED =
    const LogEventStatusEnum._('CONFIRMED');
const LogEventStatusEnum _$logEventStatusEnum_REVERTED =
    const LogEventStatusEnum._('REVERTED');
const LogEventStatusEnum _$logEventStatusEnum_DROPPED =
    const LogEventStatusEnum._('DROPPED');
const LogEventStatusEnum _$logEventStatusEnum_INACTIVE =
    const LogEventStatusEnum._('INACTIVE');

LogEventStatusEnum _$logEventStatusEnumValueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$logEventStatusEnum_PENDING;
    case 'CONFIRMED':
      return _$logEventStatusEnum_CONFIRMED;
    case 'REVERTED':
      return _$logEventStatusEnum_REVERTED;
    case 'DROPPED':
      return _$logEventStatusEnum_DROPPED;
    case 'INACTIVE':
      return _$logEventStatusEnum_INACTIVE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LogEventStatusEnum> _$logEventStatusEnumValues =
    BuiltSet<LogEventStatusEnum>(const <LogEventStatusEnum>[
  _$logEventStatusEnum_PENDING,
  _$logEventStatusEnum_CONFIRMED,
  _$logEventStatusEnum_REVERTED,
  _$logEventStatusEnum_DROPPED,
  _$logEventStatusEnum_INACTIVE,
]);

Serializer<LogEventStatusEnum> _$logEventStatusEnumSerializer =
    _$LogEventStatusEnumSerializer();

class _$LogEventStatusEnumSerializer
    implements PrimitiveSerializer<LogEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'REVERTED': 'REVERTED',
    'DROPPED': 'DROPPED',
    'INACTIVE': 'INACTIVE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'CONFIRMED': 'CONFIRMED',
    'REVERTED': 'REVERTED',
    'DROPPED': 'DROPPED',
    'INACTIVE': 'INACTIVE',
  };

  @override
  final Iterable<Type> types = const <Type>[LogEventStatusEnum];
  @override
  final String wireName = 'LogEventStatusEnum';

  @override
  Object serialize(Serializers serializers, LogEventStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LogEventStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LogEventStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LogEvent extends LogEvent {
  @override
  final String transactionHash;
  @override
  final LogEventStatusEnum status;
  @override
  final String address;
  @override
  final String topic;

  factory _$LogEvent([void Function(LogEventBuilder)? updates]) =>
      (LogEventBuilder()..update(updates))._build();

  _$LogEvent._(
      {required this.transactionHash,
      required this.status,
      required this.address,
      required this.topic})
      : super._();
  @override
  LogEvent rebuild(void Function(LogEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogEventBuilder toBuilder() => LogEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogEvent &&
        transactionHash == other.transactionHash &&
        status == other.status &&
        address == other.address &&
        topic == other.topic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionHash.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogEvent')
          ..add('transactionHash', transactionHash)
          ..add('status', status)
          ..add('address', address)
          ..add('topic', topic))
        .toString();
  }
}

class LogEventBuilder implements Builder<LogEvent, LogEventBuilder> {
  _$LogEvent? _$v;

  String? _transactionHash;
  String? get transactionHash => _$this._transactionHash;
  set transactionHash(String? transactionHash) =>
      _$this._transactionHash = transactionHash;

  LogEventStatusEnum? _status;
  LogEventStatusEnum? get status => _$this._status;
  set status(LogEventStatusEnum? status) => _$this._status = status;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  LogEventBuilder() {
    LogEvent._defaults(this);
  }

  LogEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionHash = $v.transactionHash;
      _status = $v.status;
      _address = $v.address;
      _topic = $v.topic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogEvent other) {
    _$v = other as _$LogEvent;
  }

  @override
  void update(void Function(LogEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogEvent build() => _build();

  _$LogEvent _build() {
    final _$result = _$v ??
        _$LogEvent._(
          transactionHash: BuiltValueNullFieldError.checkNotNull(
              transactionHash, r'LogEvent', 'transactionHash'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'LogEvent', 'status'),
          address: BuiltValueNullFieldError.checkNotNull(
              address, r'LogEvent', 'address'),
          topic: BuiltValueNullFieldError.checkNotNull(
              topic, r'LogEvent', 'topic'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
