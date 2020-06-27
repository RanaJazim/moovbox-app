import 'package:flutter/material.dart';
import 'package:moovbox/src/widgets/package_list.dart';

import '../widgets/app_divider.dart';
import '../widgets/app_button.dart';

class PackagesScreen extends StatelessWidget {
  final _horizentalPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Packages"),
      ),
      body: Column(
        children: <Widget>[
          AppDivider(),
          Expanded(
            child: PackageList(_horizentalPadding),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _horizentalPadding),
            child: SizedBox(
              width: double.infinity,
              child: AppButton(
                title: "Subscribe",
                onPress: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
