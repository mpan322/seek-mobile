// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_password_reset_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmPasswordResetDto extends ConfirmPasswordResetDto {
  @override
  final String userId;
  @override
  final String token;
  @override
  final String newPassword;

  factory _$ConfirmPasswordResetDto(
          [void Function(ConfirmPasswordResetDtoBuilder)? updates]) =>
      (ConfirmPasswordResetDtoBuilder()..update(updates))._build();

  _$ConfirmPasswordResetDto._(
      {required this.userId, required this.token, required this.newPassword})
      : super._();
  @override
  ConfirmPasswordResetDto rebuild(
          void Function(ConfirmPasswordResetDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmPasswordResetDtoBuilder toBuilder() =>
      ConfirmPasswordResetDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmPasswordResetDto &&
        userId == other.userId &&
        token == other.token &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmPasswordResetDto')
          ..add('userId', userId)
          ..add('token', token)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class ConfirmPasswordResetDtoBuilder
    implements
        Builder<ConfirmPasswordResetDto, ConfirmPasswordResetDtoBuilder> {
  _$ConfirmPasswordResetDto? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  ConfirmPasswordResetDtoBuilder() {
    ConfirmPasswordResetDto._defaults(this);
  }

  ConfirmPasswordResetDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _token = $v.token;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmPasswordResetDto other) {
    _$v = other as _$ConfirmPasswordResetDto;
  }

  @override
  void update(void Function(ConfirmPasswordResetDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmPasswordResetDto build() => _build();

  _$ConfirmPasswordResetDto _build() {
    final _$result = _$v ??
        _$ConfirmPasswordResetDto._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ConfirmPasswordResetDto', 'userId'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'ConfirmPasswordResetDto', 'token'),
          newPassword: BuiltValueNullFieldError.checkNotNull(
              newPassword, r'ConfirmPasswordResetDto', 'newPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
