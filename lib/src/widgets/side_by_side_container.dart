import 'package:flutter/material.dart';

class SideBySideContainer extends StatelessWidget {
  final Widget leading;
  final Widget trailing;

  SideBySideContainer({
    this.leading,
    this.trailing,
  });

  List<Widget> _widgets(List<Widget> widgets) {
    return widgets..removeWhere((widget) => widget == null);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: _widgets(
        <Widget>[
          leading != null
              ? Container(
                  width: (MediaQuery.of(context).size.width * 0.70),
                  child: leading,
                )
              : Container(),
          trailing != null ? trailing : null,
        ],
      ),
    );
  }
}
