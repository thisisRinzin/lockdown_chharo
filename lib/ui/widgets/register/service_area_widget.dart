import 'package:flutter/material.dart';
import 'package:lockdown_chharo/ui/state/register/register_state.dart';
import 'package:lockdown_chharo/ui/widgets/register/app_bar_delegate.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SelectServiceAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _state = Injector.getAsReactive<RegisterState>();

    return StateBuilder(
        observe: () => _state,
        initState: (context, model) => _state.setState((s) =>
            s.getServiceAreas(dzongkhagId: _state.state.selectedDzongkhag.id)),
        builder: (context, _) => _state.whenConnectionState(
            onIdle: () => Container(),
            onWaiting: () => Center(
                  child: Text('Loading.....'),
                ),
            onData: (_) => buildServiceAreaList(_state),
            onError: (context) => Center(
                  child: Text('Error..'),
                ))

        // buildServiceAreaList(_state),
        );
  }

  CustomScrollView buildServiceAreaList(ReactiveModel<RegisterState> _state) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 30),
          sliver: SliverPersistentHeader(
            pinned: true,
            delegate: SliverAppBarDelegate(
              minHeight: 50,
              maxHeight: 50,
              child: Text(
                'Select Service Area',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final serviceArea = _state.state.serviceAreas[index];
            return GestureDetector(
              onTap: () {
                // _state.setState((s) {
                //   s.selectedDzongkhag = dzongkhag;
                // }, onData: (context, state) => state.nextStep());
              },
              child: Text(
                serviceArea.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            );
          }, childCount: _state.state.serviceAreas.length),
        ),
      ],
    );
  }
}
