import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart'; // for modern icons (add in pubspec.yaml)

class TopBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.white,
      toolbarHeight: 70,
      titleSpacing: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      title: Row(
        children: [
          // App Logo or Name
          const Text(
            "EssyStore",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),

          const SizedBox(width: 10),

          // Expanded search field
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: TextField(
                style: const TextStyle(fontSize: 14),
                decoration: InputDecoration(
                  hintText: "Search products...",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  border: InputBorder.none,
                  icon: const Icon(LucideIcons.search, color: Colors.grey),
                ),
                onChanged: (value) {
                  // handle search input
                },
                onSubmitted: (query) {
                  // handle search submission
                },
              ),
            ),
          ),
          const Spacer(),

          // Search Icon
          IconButton(
            icon: const Icon(LucideIcons.search, color: Colors.black87),
            onPressed: () {
              // open search bar or page
            },
          ),

          // Cart Icon with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(LucideIcons.shoppingBag, color: Colors.black87),
                onPressed: () {
                  // go to cart page
                },
              ),
              Positioned(
                right: 6,
                top: 6,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Notification Icon
          IconButton(
            icon: const Icon(LucideIcons.bell, color: Colors.black87),
            onPressed: () {
              // open notifications
            },
          ),
        ],
      ),
    );
  }
    
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
