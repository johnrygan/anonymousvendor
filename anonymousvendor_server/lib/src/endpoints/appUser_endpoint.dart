import 'dart:convert';
import 'package:crypto/crypto.dart';


import 'package:anonymousvendor_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';

class AppUserEndpoint extends Endpoint{
  Future<AppUser?> createUser(Session session, AppUser user) async{
    try{
      final response = await session.db.transaction((transaction) async {
        user = AppUser(name: user.name, email: user.email, phone: user.phone, passwordHash: passwordHash(user.passwordHash), role: user.role, longitude: user.longitude, latitude: user.latitude, isActive: user.isActive, isVerified: user.isVerified);
        user = await AppUser.db.insertRow(session, user,transaction: transaction);
        return user;
      });
      return response;
    }catch(e,s){
      print('Error ${e.toString()}, ${s.toString()}');
    }
    return null;
  }

  Future<void> deleteUser(Session session, int appuserId) async {

    try{
      await AppUser.db.deleteWhere(session, where: (t)=> t.id.equals(appuserId));
    }catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
    }
  }

  Future<List<AppUser>> getAllUsers(Session session) async {
    try {
      return await AppUser.db.find(
        session,
        orderBy: (t) => t.id,
      );
    } catch (e, s) {
      print("Error ${e.toString()}, ${s.toString()}");
      return [];
    }
  }

  Future<String?> getUserRole(Session session, int appuserId) async {
    try {
      final user = await AppUser.db.findFirstRow(
        session,
        where: (t) => t.id.equals(appuserId),
      );
      return user?.role.name;
    } catch (e, s) {
      print('Error ${e.toString()}, ${s.toString()}');
      return null;
    }
  }

  Future<AppUser?> updateUser(Session session, AppUser appuser) async {
    try {
      final existingUser = await AppUser.db.findById(session, appuser.id!);
      if (existingUser == null) {
        return null; // User not found
      }

      // Update fields
      existingUser.name = appuser.name;
      existingUser.email = appuser.email;
      existingUser.phone = appuser.phone;
      existingUser.passwordHash = appuser.passwordHash;
      existingUser.role = appuser.role;
      existingUser.longitude = appuser.longitude;
      existingUser.latitude = appuser.latitude;
      existingUser.isActive = appuser.isActive;
      existingUser.isVerified = appuser.isVerified;




      await AppUser.db.updateRow(session, existingUser);
      return existingUser;
    } catch (e, s) {
      print('Error ${e.toString()}, ${s.toString()}');
      return null;
    }
  }
  String passwordHash(String password) {
    // Hash password using SHA-256
    final bytes = utf8.encode(password);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }




}