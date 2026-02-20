import 'package:anonymousvendor_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class PaymentEndpoint extends Endpoint{
  Future<Payment?> makePayment(Session session, Payment payment,
  {required int appuserId, required int orderId}) async {
    try{
      final response = await session.db.transaction((transaction) async {
        AppUser? appuser = await AppUser.db.findById(session, appuserId, transaction: transaction);
        print('User ${appuser?.toJson()}');
        Order? myOrder = await Order.db.findById(session, orderId, transaction: transaction);

        payment = await Payment.db.insertRow(session, payment, transaction: transaction);
        return payment;

      });
      return response;
    }catch(e,s){

      print("Error ${e.toString()}, ${s.toString()}");

    }
    return null;
  }

  Future<void> deletePayment(Session session, int paymentId) async {
    try{
      await Payment.db.deleteWhere(session, where: (t)=> t.id.equals(paymentId));
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return;
  }

  Future<List<Payment>> getAllPayments(Session session) async {
    try {
      return await Payment.db.find(
        session,
        orderBy: (t) => t.id,
      );
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
      return [];
    }
  }


}