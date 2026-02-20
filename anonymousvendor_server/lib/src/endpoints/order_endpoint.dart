
import 'package:anonymousvendor_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class OrderEndpoint extends Endpoint{

  Future<Order?> createOrder(Session session, Order order, {required int appuserId}) async{
    try{

      final response = await session.db.transaction((transaction)async{

        order = Order(totalAmount: order.totalAmount, status: order.status, deliveryAddress: order.deliveryAddress, latitude: order.latitude, longitude: order.longitude, createdAt: order.createdAt, updatedAt: order.updatedAt);
        AppUser? appuser = await AppUser.db.findById(session, appuserId);

        order = await Order.db.insertRow(session, order, transaction: transaction);
        return order;
      });
    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<List<Order>> getAllOrders(Session session) async {
    try {
      return await Order.db.find(
        session,
        orderBy: (t) => t.id,
      );
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
      return [];
    }
  }

  Future<void> deleteOrder(Session session, int orderId) async {

    try{
      await Order.db.deleteWhere(session, where: (t)=> t.id.equals(orderId));
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
  }

}