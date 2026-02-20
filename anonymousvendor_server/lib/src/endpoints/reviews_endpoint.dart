import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class ReviewsEndpoint extends Endpoint{
  Future<Review?> createReview(Session session, Review review, {required int appuserId})async{
    try{

      final response = session.db.transaction((transaction)async{

        review = Review(rating:review.rating, comment: review.comment);

        AppUser? appuser = await AppUser.db.findById(session, appuserId, transaction: transaction);

        review = await Review.db.insertRow(session, review, transaction: transaction);
        return review;
      });
    }catch(e,s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<Review?> deleteReview(Session session, int reviewId)async{
    try{
      await Review.db.deleteWhere(session, where: (t)=> t.id.equals(reviewId));
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }


}