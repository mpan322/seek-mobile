//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_activity_filter_by_user.g.dart';

/// NftActivityFilterByUser
///
/// Properties:
/// * [atType]
/// * [users]
/// * [types]
@BuiltValue()
abstract class NftActivityFilterByUser
    implements Built<NftActivityFilterByUser, NftActivityFilterByUserBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftActivityFilterByUserAtTypeEnum get atType;
  // enum atTypeEnum {  by_user,  };

  @BuiltValueField(wireName: r'users')
  BuiltList<String> get users;

  @BuiltValueField(wireName: r'types')
  BuiltList<NftActivityFilterByUserTypesEnum> get types;
  // enum typesEnum {  TRANSFER_FROM,  TRANSFER_TO,  MINT,  BURN,  };

  NftActivityFilterByUser._();

  factory NftActivityFilterByUser(
          [void updates(NftActivityFilterByUserBuilder b)]) =
      _$NftActivityFilterByUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityFilterByUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivityFilterByUser> get serializer =>
      _$NftActivityFilterByUserSerializer();
}

class _$NftActivityFilterByUserSerializer
    implements PrimitiveSerializer<NftActivityFilterByUser> {
  @override
  final Iterable<Type> types = const [
    NftActivityFilterByUser,
    _$NftActivityFilterByUser
  ];

  @override
  final String wireName = r'NftActivityFilterByUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivityFilterByUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftActivityFilterByUserAtTypeEnum),
    );
    yield r'users';
    yield serializers.serialize(
      object.users,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(
          BuiltList, [FullType(NftActivityFilterByUserTypesEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftActivityFilterByUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NftActivityFilterByUserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftActivityFilterByUserAtTypeEnum),
          ) as NftActivityFilterByUserAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.users.replace(valueDes);
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(NftActivityFilterByUserTypesEnum)]),
          ) as BuiltList<NftActivityFilterByUserTypesEnum>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftActivityFilterByUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityFilterByUserBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class NftActivityFilterByUserAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_user')
  static const NftActivityFilterByUserAtTypeEnum byUser =
      _$nftActivityFilterByUserAtTypeEnum_byUser;

  static Serializer<NftActivityFilterByUserAtTypeEnum> get serializer =>
      _$nftActivityFilterByUserAtTypeEnumSerializer;

  const NftActivityFilterByUserAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterByUserAtTypeEnum> get values =>
      _$nftActivityFilterByUserAtTypeEnumValues;
  static NftActivityFilterByUserAtTypeEnum valueOf(String name) =>
      _$nftActivityFilterByUserAtTypeEnumValueOf(name);
}

class NftActivityFilterByUserTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRANSFER_FROM')
  static const NftActivityFilterByUserTypesEnum TRANSFER_FROM =
      _$nftActivityFilterByUserTypesEnum_TRANSFER_FROM;
  @BuiltValueEnumConst(wireName: r'TRANSFER_TO')
  static const NftActivityFilterByUserTypesEnum TRANSFER_TO =
      _$nftActivityFilterByUserTypesEnum_TRANSFER_TO;
  @BuiltValueEnumConst(wireName: r'MINT')
  static const NftActivityFilterByUserTypesEnum MINT =
      _$nftActivityFilterByUserTypesEnum_MINT;
  @BuiltValueEnumConst(wireName: r'BURN')
  static const NftActivityFilterByUserTypesEnum BURN =
      _$nftActivityFilterByUserTypesEnum_BURN;

  static Serializer<NftActivityFilterByUserTypesEnum> get serializer =>
      _$nftActivityFilterByUserTypesEnumSerializer;

  const NftActivityFilterByUserTypesEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterByUserTypesEnum> get values =>
      _$nftActivityFilterByUserTypesEnumValues;
  static NftActivityFilterByUserTypesEnum valueOf(String name) =>
      _$nftActivityFilterByUserTypesEnumValueOf(name);
}
