import 'package:anonymousvendor_client/anonymousvendor_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../app_providers.dart';

class CustomerProfileRepo {
  final Client client;

  CustomerProfileRepo({required this.client});

  // Create customer profile
  Future<CustomerProfile?> createCustomer(
      CustomerProfile customer,
      ) async {
    try {
      return await client.customer.createCustomer(customer);
    } catch (e, s) {
      if (kDebugMode) {
        print('Error creating customer: $e\n$s');
      }
      return null;
    }
  }

  // Get customer by ID
  Future<CustomerProfile?> getCustomerById(int id) async {
    try {
      return await client.customer.getCustomerById(id);
    } catch (e, s) {
      if (kDebugMode) {
        print('Error fetching customer by ID: $e\n$s');
      }
      return null;
    }
  }

  // Get current authenticated customer
  Future<CustomerProfile?> getCurrentCustomer() async {
    try {
      return await client.customer.getCustomerByAuthUserId();
    } catch (e, s) {
      if (kDebugMode) {
        print('Error fetching current customer: $e\n$s');
      }
      return null;
    }
  }

  // Get all customers
  Future<List<CustomerProfile>> getAllCustomers() async {
    try {
      final result = await client.customer.getAllCustomers();
      return result ?? [];
    } catch (e, s) {
      if (kDebugMode) {
        print('Error fetching all customers: $e\n$s');
      }
      return [];
    }
  }

  // Update customer profile
  Future<CustomerProfile?> updateCustomer(
      CustomerProfile customer,
      ) async {
    try {
      return await client.customer.updateCustomer(customer);
    } catch (e, s) {
      if (kDebugMode) {
        print('Error updating customer: $e\n$s');
      }
      return null;
    }
  }

  // Delete customer profile
  Future<bool> deleteCustomer(CustomerProfile customer) async {
    try {
      return await client.customer.deleteCustomer(customer);
    } catch (e, s) {
      if (kDebugMode) {
        print('Error deleting customer: $e\n$s');
      }
      return false;
    }
  }

  // Delete customer by ID
  Future<bool> deleteCustomerById(int id) async {
    try {
      return await client.customer.deleteCustomerById(id);
    } catch (e, s) {
      if (kDebugMode) {
        print('Error deleting customer by ID: $e\n$s');
      }
      return false;
    }
  }
}

final customerProfileRepositoryProvider =
Provider<CustomerProfileRepo>((ref) {
  final client = ref.watch(clientProvider);

  return CustomerProfileRepo(client: client);
});

// Current authenticated customer provider
final currentCustomerProvider =
FutureProvider<CustomerProfile?>((ref) async {
  final repo = ref.watch(customerProfileRepositoryProvider);
  return repo.getCurrentCustomer();
});

// Customer by ID provider
final customerByIdProvider =
FutureProvider.family<CustomerProfile?, int>((ref, id) async {
  final repo = ref.watch(customerProfileRepositoryProvider);
  return repo.getCustomerById(id);
});

// All customers provider
final allCustomersProvider =
FutureProvider<List<CustomerProfile>>((ref) async {
  final repo = ref.watch(customerProfileRepositoryProvider);
  return repo.getAllCustomers();
});