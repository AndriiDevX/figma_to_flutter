import 'package:flutter/material.dart';

class HomeRealEstate extends StatelessWidget {
  const HomeRealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24,),
              _buildSearchBar(),
              ],
          ),
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Location',
            style: TextStyle(color: Color(0xFF858585), fontSize: 12),
          ),
          Row(
            children: [
              const Text(
                'Jakarta',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down, color: Color(0xFF858585)),
            ],
          ),
        ],
      ),
      Stack(
        children: [
          const Icon(Icons.notifications_none, size: 28, color: Colors.black),
          Positioned(
            right: 2,
            top: 2,
            child: Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildSearchBar() {
  return Row(
    children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xFFF7F7F7),
            filled: true,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: 'Search address, or near you',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      SizedBox(width: 12),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF0A8ED9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.tune, color: Colors.white),
      ),
    ],
  );
}
