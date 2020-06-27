import 'package:flutter/material.dart';

import '../widgets/app_divider.dart';
import '../widgets/app_button.dart';
import '../widgets/comment/single_comment.dart';

class CommentListScreen extends StatelessWidget {
  final _horizentalSpacing = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Comments"),
      ),
      body: _buildContent(context),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: _horizentalSpacing),
        child: AppButton(
          title: "Add Comment",
          onPress: () {},
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView(
      children: <Widget>[
        AppDivider(),
        SingleComment(_horizentalSpacing),
        SingleComment(_horizentalSpacing),
      ],
    );
  }
}
