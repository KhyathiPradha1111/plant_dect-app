import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  final String tipTitle;
  final String tipImageAsset; // Use this for asset images
  final String tipInfo;

  TipsPage({
    required this.tipTitle,
    required this.tipImageAsset,
    required this.tipInfo,
  });


  // Predefined list of tips
  final List<Map<String, String>> tips = [
    {
      'url': 'assets/bs.jpg', // Asset image path for Baking Soda Spray
      'title': 'Baking Soda Spray',
      'info': 'Baking soda can be used as a natural pesticide for plants.',
    },
    {
      'url': 'assets/nm.jpg', // Asset image path for Neem Oil
      'title': 'Neem Oil',
      'info': 'Neem oil is effective against pests and can promote plant health.',
    },
    {
      'url': 'assets/milk.jpg', // Asset image path for Milk Spray
      'title': 'Milk Spray',
      'info': 'Milk can help prevent powdery mildew on your plants.',
    },
    {
      'url': 'assets/gs.jpg', // Asset image path for Garlic Spray
      'title': 'Garlic Spray',
      'info': 'Mix 2 heads of garlic with 1 liter of water, strain, and spray on plants to repel pests and prevent fungal infections.',
    },
    {
      'url': 'assets/cu.jpg', // Asset image path for Copper Soap Spray
      'title': 'Copper Soap Spray',
      'info': 'Use a commercially available copper soap fungicide and spray it on plants affected by diseases like downy mildew and anthracnose.',
    },
    {
      'url': 'assets/cm.jpg', // Asset image path for Cornmeal
      'title': 'Cornmeal',
      'info': 'Apply cornmeal to the soil around affected plants. The beneficial microorganisms in cornmeal can help suppress soil-borne pathogens.',
    },
    {
      'url': 'assets/ct.jpg', // Asset image path for Compost Tea
      'title': 'Compost Tea',
      'info': 'Make compost tea by steeping compost in water for a few days, then strain the mixture. Spray on plants to boost their immune systems.',
    },
    {
      'url': 'assets/ps.jpg', // Asset image path for Pruning and Sanitation
      'title': 'Pruning and Sanitation',
      'info': 'Regularly prune infected plant parts and sanitize tools to prevent disease spread.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Plant Care Tips")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: tips.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image from assets
                    Image.asset(
                      tips[index]['url']!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    // Title
                    Text(
                      tips[index]['title']!,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    // Information
                    Text(
                      tips[index]['info']!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
