import 'package:architecture/app/constants/colors.dart';
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

class ListingCard extends StatelessWidget {
  final String image;
  final String label;

  const ListingCard({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(10.0, 10.0),
                    blurRadius: 3.0,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
