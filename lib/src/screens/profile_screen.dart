import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class ProfileScreen extends StatelessWidget {
  final _padding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: _padding, right: _padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: _ProfilePic(),
            ),
            _ProfileInfo(),
            _Divider(),
            Expanded(
              child: _ActionList(),
            ),
            _Footer(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class _ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: CircleAvatar(
        backgroundImage: NetworkImage(_profileImgUrl),
      ),
    );
  }
}

class _ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 0),
      title: Text(
        "Tom Cruise",
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        "tomcruise41@example.com",
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(color: AppColors.light),
      ),
      trailing: Text(
        "Edit",
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: AppColors.primary,
            ),
      ),
    );
  }
}

class _ActionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _actions.length,
      itemBuilder: (ctx, index) => Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        // height: 30,
        child: Text(
          "${_actions[index]}",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.only(left: 0, right: 0),
          leading: Text(
            "Dark Mode",
            style: Theme.of(context).textTheme.headline6,
          ),
          trailing: Text("Switch Icon here.."),
        ),
        _Divider(),
        SizedBox(height: 10),
        Text(
          "Logout",
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(color: AppColors.light);
  }
}

const _actions = ["Watched", "My Favourites", "Membership", "Settings"];

const _profileImgUrl =
    "https://i.pinimg.com/236x/c3/c6/da/c3c6dab4504a5bd721ee39eb64061230.jpg";
