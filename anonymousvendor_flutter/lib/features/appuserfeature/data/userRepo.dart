import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:flutter/foundation.dart';

class AppUserRepo {
  final Client client;
  AppUserRepo({required this.client});

  Future<AppUser?> _createUser(AppUser user) async {
    try{
      final appuser = await client.appUser.createUser(user);
      return appuser;
    }catch(e,s) {
      if(kDebugMode){
        print("Error ${e.toString()}, ${s.toString()}");
      }
    }
    return null;
  }
  Future<AppUser?> _deleteUser(AppUser user, {required int appuserId}) async{

    try{
      final result = await client.appUser.deleteUser(appuserId);
      return null;

    }catch (e, s) {
      if (kDebugMode) {
        print("Error fetching paged products: $e\n$s");
      }
    }
    return null;

  }
}

