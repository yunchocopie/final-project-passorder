import 'package:flutter/material.dart';

import '../../../../data/cafe.dart';
import 'cafe_detail.dart';

class ReviewsGood extends StatelessWidget {

  final Cafe cafe;
  ReviewsGood({required this.cafe});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 135,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  cafe.cafeImg,
                  width: 115,
                  height: 115,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16,),
              CafeDetail(cafe: cafe),
            ],
          ),
        ),
      ),
    );
  }
}
