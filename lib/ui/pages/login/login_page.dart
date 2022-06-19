import 'package:flutter/material.dart';

import '../../components/components.dart';
import 'login_presenter.dart';

class LoginPage extends StatelessWidget {

  final LoginPresenter presenter;

  LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginHeader(),
            Headline1(text: 'Login'),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Form(
                child: Column(
                  children: [
                    StreamBuilder<dynamic>(
                      stream: presenter.emailErrorStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            icon: Icon(Icons.email, color: Theme.of(context).primaryColorLight),
                            errorText: snapshot.data == '' ? null : snapshot.data
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: presenter.validateEmail,
                        );
                      }
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 32),
                      child: StreamBuilder<dynamic>(
                        stream: presenter.passwordErrorStream,
                        builder: (context, snapshot) {
                          return TextFormField(
                            decoration: InputDecoration(
                                labelText: "Senha",
                                icon: Icon(Icons.lock, color: Theme.of(context).primaryColorLight),
                                errorText: snapshot.data == '' ? null : snapshot.data
                            ),
                            obscureText: true,
                            onChanged: presenter.validatePassword,
                          );
                        }
                      ),
                    ),
                    StreamBuilder<dynamic>(
                      stream: presenter.isFormValidStream,
                      builder: (context, snapshot) {
                        return ElevatedButton(
                            onPressed: snapshot.data == true ? (){} : null,
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor
                            ),
                            child: Text('Entrar'.toUpperCase())
                        );
                      }
                    ),
                    TextButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.person),
                        label: Text('Criar Conta')
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




