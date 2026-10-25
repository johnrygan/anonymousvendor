
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../customer_profile_controller.dart';

class CustomerProfilePage extends ConsumerStatefulWidget {
  const CustomerProfilePage({super.key});

  @override
  ConsumerState<CustomerProfilePage> createState() =>
      _CustomerProfilePageState();
}

class _CustomerProfilePageState
    extends ConsumerState<CustomerProfilePage> {
  final _formKey = GlobalKey<FormState>();

  final _fullNameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();

  @override
  void dispose() {
    _fullNameCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(
      customerProfileControllerProvider,
          (previous, next) {
        next.whenOrNull(
          error: (error, stackTrace) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Could not save customer profile: $error',
                ),
              ),
            );
          },
        );

        if (previous?.isLoading == true && next.hasValue) {
          context.go('/home');
        }
      },
    );

    final saveState = ref.watch(customerProfileControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Icon(
                Icons.account_circle,
                size: 85,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Complete Your Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),

              // Full name
              TextFormField(
                controller: _fullNameCtrl,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) =>
                value == null || value.trim().isEmpty
                    ? 'Full name is required'
                    : null,
              ),
              const SizedBox(height: 16),

              // Phone number
              TextFormField(
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) =>
                value == null || value.trim().isEmpty
                    ? 'Phone number is required'
                    : null,
              ),
              const SizedBox(height: 24),

              // Save button
              ElevatedButton(
                onPressed: saveState.isLoading ? null : _submit,
                child: saveState.isLoading
                    ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
                    : const Text('Save Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    ref.read(customerProfileControllerProvider.notifier).submit(
      fullName: _fullNameCtrl.text.trim(),
      phone: _phoneCtrl.text.trim(),
    );
  }
}
