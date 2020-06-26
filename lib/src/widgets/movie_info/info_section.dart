import 'package:flutter/material.dart';

import './rating_with_caste_info.dart';
import '../../config/theme/app_color.dart';
import './caste_info.dart';

class InfoSection extends StatelessWidget {
  final double _padding;
  final _gapBetweenWidgets = 10.0;

  InfoSection(this._padding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: _padding, right: _padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: _gapBetweenWidgets),
          Text(
            "Joker",
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "Comedy, Thriller, Action",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: _gapBetweenWidgets),
          RatingWithCasteInfo(),
          SizedBox(height: 20),
          Text(
            "$_description",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: _gapBetweenWidgets),
          Divider(color: AppColors.medium),
          SizedBox(height: _gapBetweenWidgets),
          Expanded(
            child: CasteInfo(_casteImgUrl2),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              color: AppColors.primary,
              onPressed: () {},
              child: Text("Watch Now"),
            ),
          ),
        ],
      ),
    );
  }
}

const _description =
    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.";
const _casteImgUrl2 =
    "https://i.pinimg.com/236x/c3/c6/da/c3c6dab4504a5bd721ee39eb64061230.jpg";
