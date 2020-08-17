import 'package:flutter/material.dart';
import 'package:lockdown_chharo/ui/state/register/register_state.dart';
import 'package:lockdown_chharo/ui/widgets/register/app_bar_delegate.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'dart:math' as math;

class SelectDzongkhagWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _service = Injector.getAsReactive<RegisterState>();

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
                'Select Dzongkhag',
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
            final dzongkhag = _service.state.dzongkhags[index];
            return GestureDetector(
              onTap: () {
                _service.setState((s) {
                  s.selectedDzongkhag = dzongkhag;
                }, onData: (context, state) => state.nextStep());
              },
              child: Text(
                dzongkhag.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            );
          }, childCount: _service.state.dzongkhags.length),
        ),
      ],
    );
  }
}
