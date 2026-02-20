import 'dart:typed_data';

import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class ImageEndpoint extends Endpoint {



  Future<ImageFile?> uploadImage(Session session, ImageFile image,String name, String path, {required int productId}) async {

    try {
      final response = await session.db.transaction((transaction) async {

        Product? product = await Product.db.findById(session, productId, transaction: transaction);

        if(product == null) {
          throw Exception('product not found');
        }
        final image = ImageFile(
          name: name,
          path: path,
          storageId: 'public',
          createdAt: DateTime.now(),
          productId: productId,

        );
        await ImageFile.db.insertRow(session, image, transaction: transaction);
        return image;
      });

      return response;
    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;

  }

  //get upload  description
  Future<String?> getUploadDescription(
      Session session,
      String path,
      ) async {
    try {
      return await session.storage.createDirectFileUploadDescription(
        storageId: 'public',
        path: path,
      );
    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");

    }
    return null;
  }


  // Get image by ID
  Future<ImageFile?> getImage(Session session, int imageFileId) async {

    try{
      return await ImageFile.db.findById(
          session,
          imageFileId
      );

    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return null;

  }

  // Get all images (optional)
  Future<List<ImageFile>> getAllImages(Session session) async {
    try{
      return await ImageFile.db.find(session);

    }catch(e,s){
      print("Error ${e.toString()}, ${s.toString()}");
    }
    return [];
  }

  Future<ImageFile?> deleteImage(Session session, int imageFileId) async {
    try{

      await ImageFile.db.deleteWhere(session, where: (t) => t.id.equals(imageFileId));

    }catch(e,s) {

        print("Error ${e.toString()}, ${s.toString()}");

    }
    return null;
  }

  Future<List<ImageFile>> getImageByProductId(Session session, int productId) async {
    try {
      return await ImageFile.db.find(
        session,
        where: (t) => t.productId.equals(productId),
        orderBy: (t) => t.id,
      );


    }catch(e,s){

      print("error ${e.toString()}, ${s.toString()}");

    }
    return [];
  }
}
