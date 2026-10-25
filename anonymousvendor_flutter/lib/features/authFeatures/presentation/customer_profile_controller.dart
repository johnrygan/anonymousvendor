import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:anonymousvendor_flutter/features/authFeatures/data/customerRepo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final customerProfileControllerProvider = StateNotifierProvider<CustomerProfileController, AsyncValue<void>>(
    (ref) => CustomerProfileController(ref: ref),
);

class CustomerProfileController extends StateNotifier<AsyncValue<void>> {

  final Ref ref;
  CustomerProfileController({required this.ref})
  : super(const AsyncData(null));

  Future<void> submit({
    required String fullName,
    required String phone,

})async {
    final customerRepository = ref.read(customerProfileRepositoryProvider);
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {

      final customer = CustomerProfile(
          fullName: fullName,
          phone: phone,
        isComplete: true

      );
      final result = await customerRepository.createCustomer(customer);

    });

  }
  }
