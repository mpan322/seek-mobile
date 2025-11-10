// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityTypes _$TRANSFER = const ActivityTypes._('TRANSFER');
const ActivityTypes _$MINT = const ActivityTypes._('MINT');
const ActivityTypes _$BURN = const ActivityTypes._('BURN');
const ActivityTypes _$BID = const ActivityTypes._('BID');
const ActivityTypes _$LIST = const ActivityTypes._('LIST');
const ActivityTypes _$MATCH = const ActivityTypes._('MATCH');

ActivityTypes _$valueOf(String name) {
  switch (name) {
    case 'TRANSFER':
      return _$TRANSFER;
    case 'MINT':
      return _$MINT;
    case 'BURN':
      return _$BURN;
    case 'BID':
      return _$BID;
    case 'LIST':
      return _$LIST;
    case 'MATCH':
      return _$MATCH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityTypes> _$values =
    BuiltSet<ActivityTypes>(const <ActivityTypes>[
  _$TRANSFER,
  _$MINT,
  _$BURN,
  _$BID,
  _$LIST,
  _$MATCH,
]);

class _$ActivityTypesMeta {
  const _$ActivityTypesMeta();
  ActivityTypes get TRANSFER => _$TRANSFER;
  ActivityTypes get MINT => _$MINT;
  ActivityTypes get BURN => _$BURN;
  ActivityTypes get BID => _$BID;
  ActivityTypes get LIST => _$LIST;
  ActivityTypes get MATCH => _$MATCH;
  ActivityTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<ActivityTypes> get values => _$values;
}

abstract class _$ActivityTypesMixin {
  // ignore: non_constant_identifier_names
  _$ActivityTypesMeta get ActivityTypes => const _$ActivityTypesMeta();
}

Serializer<ActivityTypes> _$activityTypesSerializer =
    _$ActivityTypesSerializer();

class _$ActivityTypesSerializer implements PrimitiveSerializer<ActivityTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRANSFER': 'TRANSFER',
    'MINT': 'MINT',
    'BURN': 'BURN',
    'BID': 'BID',
    'LIST': 'LIST',
    'MATCH': 'MATCH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRANSFER': 'TRANSFER',
    'MINT': 'MINT',
    'BURN': 'BURN',
    'BID': 'BID',
    'LIST': 'LIST',
    'MATCH': 'MATCH',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityTypes];
  @override
  final String wireName = 'ActivityTypes';

  @override
  Object serialize(Serializers serializers, ActivityTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
