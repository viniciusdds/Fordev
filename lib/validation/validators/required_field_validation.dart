import 'package:fordev/validation/protocols/protocols.dart';

class RequiredFieldValidation implements FieldValidation {
  final String field;

  RequiredFieldValidation(this.field);

  String validate(String value){
    return value.isNotEmpty == true ? ""  : 'Campo obrigatório';
  }
}