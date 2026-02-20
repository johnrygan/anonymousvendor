import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:flutter/foundation.dart';

class PaymentRepo{
  late final Client client;
  PaymentRepo({required this.client});

  Future<Payment?> _makePayment(Payment payment, {required int appuserId, required int orderId}) async{
    try{
      final result = await client.payment.makePayment(payment, appuserId: appuserId, orderId: orderId);
      return result;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }

  Future<Payment?> _deletePayment(Payment payment, {required int paymentId}) async{
    try{
      final result = await client.payment.deletePayment(paymentId);
      return null;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }

  Future<List<Payment?>> _getAllPayments(Payment payment) async{
    try{
      final result = await client.payment.getAllPayments();
      return result;

    }catch(e,s) {
      if (kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return [];
  }

}