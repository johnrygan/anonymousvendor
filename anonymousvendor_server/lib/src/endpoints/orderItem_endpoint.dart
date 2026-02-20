
import 'package:serverpod/serverpod.dart' hide Order;

import 'package:anonymousvendor_server/src/generated/protocol.dart';

class OrderItemEndpoint extends Endpoint{
  Future<OrderItem?> createItem(Session session, OrderItem item, {required int orderId, required int productId}) async{
    try {
      final response = await session.db.transaction((transaction) async {
        item = OrderItem(quantity: item.quantity, price: item.price);

        Order? order = await Order.db.findById(
            session, orderId, transaction: transaction);
        Product? product = await Product.db.findById(
            session, productId, transaction: transaction);

        item =
        await OrderItem.db.insertRow(session, item, transaction: transaction);
        return item;
      });
      return null;
    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;
  }

  Future<void> deleteItem(Session session, int itemId) async {
    try{
      await Product.db.deleteWhere(session, where: (t)=> t.id.equals(itemId));
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return;
  }

}