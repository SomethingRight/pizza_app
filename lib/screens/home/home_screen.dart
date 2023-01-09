import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_pizza_app/config/theme.dart';
import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'PizzaMaker',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          //Carousel Slider
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.75,
                viewportFraction: 0.85,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
          ),
           const SizedBox(height: 10),
          //SectionTitle
          const SectionTitle(
              icon: Icon(Icons.add_reaction_outlined), title: 'Recommended'),
          //Product Carousel
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          const SizedBox(
            height: 15,
          ),
          //Section Title
          const SectionTitle(
              icon: Icon(Icons.local_pizza_outlined), title: 'Most Popular'),
          //Product Carousel
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
