import 'package:architecture/app/constants/colors.dart';
import 'package:architecture/app/widgets/listing_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListingWidget extends StatelessWidget {
  final List<Map<String, String>> listings = [
    {"image": "assets/images/c1.jpg", "label": "PRE-SELLING"},
    {"image": "assets/images/c2.jpg", "label": "RESIDENTIAL"},
    {"image": "assets/images/c3.JPG", "label": "COMMERCIAL"},
    {"image": "assets/images/c1.jpg", "label": "RENTAL"},
    {"image": "assets/images/c2.jpg", "label": "AUCTION"},
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      itemCount: listings.length,
      itemBuilder: (context, index) {
        return ListingCard(
          image: listings[index]['image']!,
          label: listings[index]['label']!,
        );
      },
      staggeredTileBuilder: (index) {
        if (listings[index]['label'] == 'COMMERCIAL') {
          return StaggeredTile.count(1, 2);
        } else {
          return StaggeredTile.count(1, 1);
        }
      },
    );
  }
}


