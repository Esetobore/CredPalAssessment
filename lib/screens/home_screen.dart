import 'package:credpal/constants/paths.dart';
import 'package:credpal/widgets/merchant_icon.dart';
import 'package:credpal/widgets/product_card.dart';
import 'package:credpal/widgets/search_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and credit button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                color: Color(0xFFD0DAFF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pay later',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'everywhere',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 4),
                            SvgPicture.asset(AppPaths.exclamationIcon),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Shopping Limit: ₦0",
                          style: TextStyle(fontSize: 14),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0F34A8),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Activate Credit'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Search bar
              SearchComponent(),
              const SizedBox(height: 10),

              // Product grid
              Container(
                color: Color(0xFFF1F3FE),
                height: 500,
                padding: const EdgeInsets.all(8),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  scrollDirection: Axis.horizontal,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  children: const [
                    ProductCard(
                      image: AppPaths.product1,
                      name: 'Nokia G20',
                      price: '39,780',
                      originalPrice: '48,000',
                      circleImage: AppPaths.circleLogo1,
                    ),
                    ProductCard(
                      image: AppPaths.product1,
                      name: 'Nokia G20',
                      price: '39,780',
                      originalPrice: '48,000',
                      circleImage: AppPaths.circleLogo1,
                    ),
                    ProductCard(
                      image: AppPaths.product1,
                      name: 'Nokia G20',
                      price: '39,780',
                      originalPrice: '48,000',
                      circleImage: AppPaths.circleLogo1,
                    ),
                    ProductCard(
                      image: AppPaths.product2,
                      name: 'iPhone XS Max 4GB...',
                      price: '299,999',
                      originalPrice: '350,000',
                      circleImage: AppPaths.circleLogo2,
                    ),
                    ProductCard(
                      image: AppPaths.product2,
                      name: 'Anker Soundcore',
                      price: '39,780',
                      originalPrice: '48,000',
                      isHighlighted: true,
                      badgeText: 'NEW',
                      circleImage: AppPaths.circleLogo3,
                    ),
                    ProductCard(
                      image: AppPaths.product2,
                      name: 'iPhone 12 Pro',
                      price: '490,500',
                      originalPrice: '510,000',
                      circleImage: AppPaths.circleLogo4,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Featured Merchants Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Featured Merchants',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Merchant grid
                    GridView.count(
                      crossAxisCount: 4,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        FeaturedMerchant(
                          name: "Justrite",
                          logoPath: AppPaths.merchant3,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Orile Restaurant",
                          logoPath: AppPaths.merchant1,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Slot",
                          logoPath: AppPaths.merchant2,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Pointek",
                          logoPath: AppPaths.merchant3,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Ogabassey",
                          logoPath: AppPaths.merchant3,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Casper Stores",
                          logoPath: AppPaths.merchant1,
                          hasIndicator: false,
                        ),
                        FeaturedMerchant(
                          name: "Dreamworks",
                          logoPath: AppPaths.merchant2,
                          hasIndicator: false,
                        ),
                        FeaturedMerchant(
                          name: "Hubmart",
                          logoPath: AppPaths.merchant2,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Just Used",
                          logoPath: AppPaths.merchant1,
                          hasIndicator: true,
                        ),
                        FeaturedMerchant(
                          name: "Just Fones",
                          logoPath: AppPaths.merchant3,
                          hasIndicator: true,
                        ),
                        // Add more items as needed
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
