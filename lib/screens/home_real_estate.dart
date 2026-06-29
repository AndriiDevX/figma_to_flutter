import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class HomeRealEstate extends StatelessWidget {
  const HomeRealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.realEstateBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _HeaderRow(),
              const SizedBox(height: 24),
              const _SearchBar(),
              const SizedBox(height: 24),
              const _CategoriesRow(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Near from you',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(fontSize: 14, color: AppColors.textGrey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    NearYouCard(
                      imageUrl:
                          'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?q=80&w=500',
                      title: 'Dreamsville House',
                      address: 'Jl. Sultan Iskandar Muda',
                      distance: '1.8 km',
                    ),
                    NearYouCard(
                      imageUrl:
                          'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?q=80&w=500',
                      title: 'Ascot House',
                      address: 'Jl. Cilandak Tengah',
                      distance: '2.5 km',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best for you',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(fontSize: 14, color: AppColors.textGrey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const BestForYouCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1564013799919-ab600027ffc6?q=80&w=500',
                title: 'Orchad House',
                price: 'Rp. 2.500.000.000 / Year',
                bedrooms: 6,
                bathrooms: 4,
              ),
              const BestForYouCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1580587771525-78b9dba3b914?q=80&w=500',
                title: 'The Hollies House',
                price: 'Rp. 2.000.000.000 / Year',
                bedrooms: 5,
                bathrooms: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Location',
              style: TextStyle(color: AppColors.textGrey, fontSize: 12),
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
                const Icon(Icons.keyboard_arrow_down, color: AppColors.textGrey),
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
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: AppColors.lightGrey,
              filled: true,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              hintText: 'Search address, or near you',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.blueAccent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.tune, color: Colors.white),
        ),
      ],
    );
  }
}

class _CategoriesRow extends StatelessWidget {
  const _CategoriesRow();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _CategoryChip(title: 'House', isActive: true),
          _CategoryChip(title: 'Apartment', isActive: false),
          _CategoryChip(title: 'Hotel', isActive: false),
          _CategoryChip(title: 'Villa', isActive: false),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String title;
  final bool isActive;

  const _CategoryChip({
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? AppColors.blueAccent : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : AppColors.textGrey,
          fontSize: 14,
          fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
        ),
      ),
    );
  }
}

class NearYouCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String address;
  final String distance;

  const NearYouCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.address,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 290,
      margin: const EdgeInsets.only(right: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withValues(alpha: 0.6)],
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      distance,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    address,
                    style: const TextStyle(color: Color(0xFFD4D4D4), fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestForYouCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int bedrooms;
  final int bathrooms;

  const BestForYouCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imageUrl,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.blueAccent,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.bed, size: 16, color: AppColors.textGrey),
                    const SizedBox(width: 4),
                    Text(
                      '$bedrooms bedroom',
                      style: const TextStyle(
                          color: AppColors.textGrey, fontSize: 12),
                    ),
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.bathtub_outlined,
                      size: 16,
                      color: AppColors.textGrey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$bathrooms bathroom',
                      style: const TextStyle(
                          color: AppColors.textGrey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
