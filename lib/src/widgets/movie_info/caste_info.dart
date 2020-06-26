import 'package:flutter/material.dart';

import '../top_bottom_container.dart';
import '../side_by_side_container.dart';

class CasteInfo extends StatelessWidget {
  final String _imgUrl;

  CasteInfo(this._imgUrl);

  @override
  Widget build(BuildContext context) {
    return TopBottomContainer(
      top: SideBySideContainer(
        leading: Text(
          "Full Caste and Crew",
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        trailing: Text("See All"),
      ),
      bottom: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          width: 100,
          // color: Colors.blue,
          margin: EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  _imgUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Tom Cruise",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
