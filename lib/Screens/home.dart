import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                    top: 80.0,
                    left: (MediaQuery.of(context).size.width - 100) / 2,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFEFDA1A),
                      radius: 50.0,
                      child: Image.asset(
                        'assets/image 56.png',
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                  FlexibleSpaceBar(
                    title: Text(''),
                    background: Image.asset(
                      'assets/image 55.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ... rest of your content ...

                        Text(
                          'Recommended Items',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildCard('Item 1', 'assets/image 55.png'),
                            _buildCard('Item 2', 'assets/image 56.png'),
                          ],
                        ),
                        SizedBox(height: 28.0),

                        Text(
                          'Menu of Pizza Hut',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildCard('Item 3', 'assets/image 55.png'),
                            _buildCard('Item 4', 'assets/image 56.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String cardName, String imagePath) {
    return Container(
      height: 175,
      width: 207,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 165,
              width: 195,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 4.0),
            Text(
              cardName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
