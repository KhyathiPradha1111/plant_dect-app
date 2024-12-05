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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tipTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image from assets
            Image.asset( // Use Image.asset for displaying local images
              tipImageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            SizedBox(height: 10),
            // Title
            Text(
              tipTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Information
            Text(
              tipInfo,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
