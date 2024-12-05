import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'upload_page.dart' as upload; // Alias for UploadPage
import 'tips_page.dart'; // Import TipsPage

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> imgList = [
      {
        'url': 'assets/bs.jpg', // Asset image path for carousel
        'tip': 'Baking Soda Spray for plants',
        'title': 'Baking Soda Spray',
        'info': 'Baking soda can be used as a natural pesticide for plants.',
      },
      {
        'url': 'assets/nm.jpg', // Asset image path for carousel
        'tip': 'Neem Oil for plants',
        'title': 'Neem Oil',
        'info': 'Neem oil is effective against pests and can promote plant health.',
      },
      {
        'url': 'assets/milk.jpg', // Asset image path for carousel
        'tip': 'Milk Spray for plants',
        'title': 'Milk Spray',
        'info': 'Milk can help prevent powdery mildew on your plants.',
      },
      {
        'url': 'assets/gs.jpg', // Asset image path for carousel
        'tip': 'Garlic Spray for plants',
        'title': 'Garlic Spray',
        'info': 'Mix 2 heads of garlic with 1 liter of water, strain, and spray on plants to repel pests and prevent fungal infections.',
      },
      {
        'url': 'assets/cu.jpg', // Asset image path for carousel
        'tip': 'Copper Soap Spary for plants',
        'title': 'Copper Soap Spary',
        'info': ' Use a commercially available copper soap fungicide and spray it on plants affected by diseases like downy mildew and anthracnose. Follow the instructions on the product label for proper application.',
      },
      {
        'url': 'assets/cm.jpg', // Asset image path for carousel
        'tip': 'Cornmeal for plants',
        'title': 'Cornmeal',
        'info': 'Apply cornmeal to the soil around affected plants. The beneficial microorganisms in cornmeal can help suppress soil-borne pathogens and promote healthier soil.',
      },
      {
        'url': 'assets/ct.jpg', // Asset image path for carousel
        'tip': 'Compost Tea for plants',
        'title': 'Compost Tea',
        'info': 'Make compost tea by steeping compost in water for a few days, then strain the mixture. Spray the compost tea on plants as a foliar spray to boost their immune systems and help prevent diseases.',
      },{
        'url': 'assets/ps.jpg', // Asset image path for carousel
        'tip': 'Pruning and Sanitation for plants',
        'title': 'Pruning and Sanitation',
        'info': 'Regularly prune infected plant parts and remove them from the garden to prevent the spread of diseases. Sanitize pruning tools between cuts to avoid transmitting pathogens.',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Welcome back, $username!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: CarouselSlider.builder(
              itemCount: imgList.length,
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to TipsPage with relevant data
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TipsPage(
                          tipTitle: imgList[index]['title']!,
                          tipImageAsset: imgList[index]['url']!, // Use asset path here
                          tipInfo: imgList[index]['info']!,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 8, spreadRadius: 2),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.asset( // Use Image.asset for displaying asset images in the carousel
                            imgList[index]['url']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              color: Colors.black54,
                              padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child:
                              Row(children:[
                                Text(imgList[index]['tip']!,
                                  style:
                                  TextStyle(color:
                                  Colors.white, fontSize:
                                  20),
                                ),
                                Icon(Icons.arrow_forward, color:
                                Colors.white), // Arrow icon
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              options:
              CarouselOptions(height:
              250, autoPlay:
              true, enlargeCenterPage:
              true, aspectRatio:
              16 / 9, viewportFraction:
              0.8,),
            ),
          ),

          // About Us Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                Column(crossAxisAlignment:
                CrossAxisAlignment.start,
                  children:[
                    Text("About Us",
                      style:
                      TextStyle(fontSize:
                      24, fontWeight:
                      FontWeight.bold),),
                    SizedBox(height:
                    10,),
                    Text("We are dedicated to providing the best plant care tips and solutions. Our mission is to help you nurture your plants and create a beautiful environment.",
                      style:
                      TextStyle(fontSize:
                      16, color:
                      Colors.black54),),
                  ],
                ),
              ),
            ),
          ),

          // Buttons Row
          Padding(
            padding:
            const EdgeInsets.all(16.0),
            child:
            Row(mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
              children:[
                ElevatedButton(onPressed:
                    () {
                  // Navigate to Tips Page with an asset image for general tips
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context) =>
                          TipsPage(tipTitle:'General Tips', tipImageAsset:'assets/tips.png', tipInfo:'General tips about plant care.'),
                      ));
                }, child:
                Text("Tips")),
                ElevatedButton(onPressed:
                    () {
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) => upload.UploadPage()));
                }, child:
                Text("Upload")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
