import 'package:flutter/material.dart';
import 'package:lockdown_chharo/models/dzongkag/dzongkhag.dart';
import 'package:lockdown_chharo/ui/state/register/register_state.dart';
import 'package:lockdown_chharo/ui/widgets/register/app_bar_delegate.dart';
import 'package:lockdown_chharo/ui/widgets/register/register_form.dart';
import 'package:lockdown_chharo/ui/widgets/register/select_dzongkhag_widget.dart';
import 'package:lockdown_chharo/ui/widgets/register/service_area_widget.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'dart:math' as math;

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Injector(
          inject: [Inject(() => RegisterState())],
          builder: (context) {
            final _registerPageState = Injector.getAsReactive<RegisterState>();

            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: StateBuilder(
                  initState: (context, _) =>
                      _registerPageState.setState((s) => s.getDzongkhag()),
                  observe: () => _registerPageState,
                  builder: (context, _) {
                    return _registerPageState.whenConnectionState(
                        onIdle: () => Container(),
                        onWaiting: () => Container(),
                        onData: (state) {
                          switch (state.step) {
                            case 0:
                              return RegisterForm();
                              break;
                            case 1:
                              return SelectDzongkhagWidget();
                            case 2:
                              return SelectServiceAreaWidget();
                            default:
                              return Container();
                          }
                        },
                        onError: (error) => Container());
                  }),
            );
          }),
    );
  }
}
