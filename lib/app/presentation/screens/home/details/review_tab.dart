import 'package:flutter/material.dart';

import 'render_card_review.dart';

class ReviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            RenderCardReview(),
            RenderCardReview(),
            RenderCardReview(),
            RenderCardReview(),
          ],
        ),
      ),
    );
  }
}
