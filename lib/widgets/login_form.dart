import 'package:flutter/material.dart';
import 'package:flutter_api_formcad/utils/responsive.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Column(
          children: <Widget>[
            InputText(
              keyboardType: TextInputType.emailAddress,
              label: "EMAIL ADRESS",
              fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.8),
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
                      obscureText: true,
                      borderEnabled: false,
                      fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.8),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            responsive.dp(responsive.isTablet ? 3.0 : 2.8),
                      ),
                    ),
                    onPressed: () {},
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
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.dp(responsive.isTablet ? 3.0 : 2.4),
                  ),
                ),
                onPressed: () {},
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
                  "New to Friendly Desi?",
                  style: TextStyle(
                    fontSize: responsive.dp(4),
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: responsive.dp(14),
            ),
          ],
        ),
      ),
    );
  }
}
