import 'package:page_grid/src/body_flex.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class PageGrid extends StatelessWidget {
  const PageGrid({
    Key? key,
    Widget head = nil,
    required Widget body,
    Widget footer = nil,
    bool mirror = false,
    BodyFlex mobileFlex = const BodyFlex(),
    BodyFlex desktopFlex = const BodyFlex(),
  })  : _head = head,
        _body = body,
        _footer = footer,
        _mirror = mirror,
        _mobileFlex = mobileFlex,
        _desktopFlex = desktopFlex,
        super(key: key);

  final Widget _head;
  final Widget _body;
  final Widget _footer;
  final bool _mirror;
  final BodyFlex _desktopFlex;
  final BodyFlex _mobileFlex;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    if (_width > 1000) {
      return Row(
        children: [
          if (!_mirror)
            Expanded(
              flex: _desktopFlex.head,
              child: _head,
            ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: _desktopFlex.body,
                  child: _body,
                ),
                Expanded(
                  flex: _desktopFlex.footer,
                  child: _footer,
                ),
              ],
            ),
          ),
          if (_mirror)
            Expanded(
              flex: _desktopFlex.head,
              child: _head,
            ),
        ],
      );
    } else {
      return Column(
        children: [
          Expanded(
            flex: _mobileFlex.head,
            child: _head,
          ),
          Expanded(
            flex: _mobileFlex.body,
            child: _body,
          ),
          Expanded(
            flex: _mobileFlex.footer,
            child: _footer,
          ),
        ],
      );
    }
  }
}
