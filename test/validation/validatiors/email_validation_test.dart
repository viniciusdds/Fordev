// @dart=2.9

import 'package:test/test.dart';

import 'package:fordev/validation/validators/validators.dart';

void main(){
  EmailValidation sut;

  setUp((){
     sut = EmailValidation('any_field');
  });

  test('Should return null if email is empty', (){
      expect(sut.validate(''), null);
  });

  test('Should return null if email is null', (){
    expect(sut.validate(null), null);
  });

  test('Should return null if email is valid', (){
    expect(sut.validate('rodrigo.manguinho@gmail.com'), null);
  });

  test('Should return null if email is invalid', (){
    expect(sut.validate('rodrigo.manguinho'), 'Campo inválido');
  });
}