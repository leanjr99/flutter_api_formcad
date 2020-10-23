import 'package:flutter/material.dart';
import 'package:flutter_api_formcad/utils/responsive.dart';
import 'input_text.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '', _password = '', _username;
  _submit() {
    final isOk = _formKey.currentState.validate();
    print("form is Ok $isOk");
    if (isOk) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              InputText(
                keyboardType: TextInputType.emailAddress,
                label: "FULL NAME",
                fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.8),
                onChanged: (text) {
                  _username = text;
                },
                validator: (text) {
                  if (text.trim().length > 5) {
                    return "invalid username";
                  }
                  return null;
                },
              ),
              InputText(
                keyboardType: TextInputType.emailAddress,
                label: "EMAIL ADRESS",
                fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.8),
                onChanged: (text) {
                  _email = text;
                },
                validator: (text) {
                  if (!text.contains("@")) {
                    return "invalid email";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(3),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InputText(
                          label: "PASSWORD",
                          borderEnabled: false,
                          fontSize:
                              responsive.dp(responsive.isTablet ? 3.0 : 2.8),
                          onChanged: (text) {
                            _password = text;
                          },
                          validator: (text) {
                            if (text.trim().length < 6) {
                              return "invalid password";
                            }
                            return null;
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: responsive.dp(5),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.4),
                    ),
                  ),
                  onPressed: this._submit,
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: responsive.dp(4),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: responsive.dp(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
