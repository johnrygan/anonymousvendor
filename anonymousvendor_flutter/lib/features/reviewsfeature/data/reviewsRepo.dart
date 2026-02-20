import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:flutter/foundation.dart';

class ReviewsRepo{
  late final Client client;

  ReviewsRepo({required this.client});


  Future<Review?> _createReview(Review review, {required int appuserId}) async{
    try{
      final result = await client.reviews.createReview(review, appuserId: appuserId);
      return result;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }

  Future<Review?> _deleteReview(Review review, {required int reviewsId}) async{
    try{
      final result = await client.reviews.deleteReview(reviewsId);
      return null;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }
}