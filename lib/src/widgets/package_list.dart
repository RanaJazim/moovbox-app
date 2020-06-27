import 'package:flutter/material.dart';

import '../config/theme/app_color.dart';

class PackageList extends StatelessWidget {
  final _horizentalPadding;

  PackageList(this._horizentalPadding);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for (Package package in _packages)
          _SinglePackage(package, _horizentalPadding)
      ],
    );
  }
}

class _SinglePackage extends StatelessWidget {
  final Package _package;
  final _horizentalPadding;

  _SinglePackage(this._package, this._horizentalPadding);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    double leftPadding = deviceSize.width * 0.5;

    return Container(
      margin:
          EdgeInsets.symmetric(vertical: 15, horizontal: _horizentalPadding),
      width: double.infinity,
      height: deviceSize.height * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.light),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding, top: 20),
        child: _ActualContent(_package),
      ),
    );
  }
}

class _ActualContent extends StatelessWidget {
  final Package _package;

  _ActualContent(this._package);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "${_package.packageTitle}",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: AppColors.light),
        ),
        SizedBox(height: 5),
        Text(
          "\$${_package.price} / ${_package.subsription}",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: AppColors.primary),
        ),
        SizedBox(height: 10),
        Text(
          "${_package.noOfMovies}",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

// this is a model later on i will extract into seperate component this is just for demo
class Package {
  final String packageTitle;
  final int price;
  final String noOfMovies;
  final String subsription;

  Package({
    this.packageTitle,
    this.price,
    this.noOfMovies,
    this.subsription,
  });
}

final _packages = [
  Package(
    packageTitle: "Basic",
    price: 19,
    noOfMovies: "3 Movies Daily",
    subsription: "month",
  ),
  Package(
    packageTitle: "Pro",
    price: 30,
    noOfMovies: "7 Movies Daily",
    subsription: "month",
  ),
  Package(
    packageTitle: "Premium",
    price: 180,
    noOfMovies: "Unlimited Movies",
    subsription: "year",
  ),
];
