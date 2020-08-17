import 'package:flutter/material.dart';
import 'package:lockdown_chharo/ui/state/register/register_state.dart';
import 'package:lockdown_chharo/ui/ui_helper.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Injector.getAsReactive<RegisterState>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Register in COVID CHHARO',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          'Please enter your name and phone number',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
            decoration: InputDecoration(labelText: 'Name'),
            onChanged: (value) => state.setState((s) => s.name = value)),
        SizedBox(
          height: 18,
        ),
        TextField(
            decoration: InputDecoration(labelText: 'Phone number'),
            onChanged: (value) => state.setState((s) => s.phoneNumber = value)),
        SizedBox(height: 18),
        UIHelper.buildPrimaryButton(
            onPressed: () {
              state.setState((s) => s.nextStep());
            },
            text: 'NEXT')
      ],
    );
  }
}
