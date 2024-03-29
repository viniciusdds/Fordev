import 'package:equatable/equatable.dart';

import '../entities/account_entity.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams extends Equatable {
  final String email;
  final String secret;

  @override
  List get props => [email, secret];

  AuthenticationParams({
    required this.email,
    required this.secret
  });
}