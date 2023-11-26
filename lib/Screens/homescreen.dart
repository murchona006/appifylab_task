

import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
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
              flexibleSpace: FlexibleSpaceBar(
                title: Text(''),
                background: Image.asset(
                  'assets/image 55.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.hardEdge,

                children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                                          //padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                         Positioned(
                           top: 80.0 - 25.0, // Adjust the top position as needed
                           left: (MediaQuery.of(context).size.width - 100) / 2,// Center the CircleAvatar
                           child: CircleAvatar(
                            backgroundColor: Color(0xFFEFDA1A),
                            radius: 50.0,
                            child: Image.asset(
                              'assets/image 56.png',
                              fit: BoxFit.cover, // Adjust this property to control how the image is fitted within the CircleAvatar
                              width: 50.0, // Adjust the width to your desired size
                              height:50.0, // Adjust the height to your desired size
                            ),
                                                   ),
                         ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Text(
                              'Pizza Hut',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.star, size:14, color: Colors.yellow,),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '46 Tarkrow, London',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.0),


                        Row(
                          children: [
                            Icon(
                              Icons.delivery_dining_outlined, // You can use a different icon here
                              color:Colors.deepPurpleAccent,
                            ),
                            SizedBox(width: 8.0), // Adjust the spacing as needed
                            Text(
                              'Delivery Fee \$2',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 25.0),
                            Icon(
                              Icons.timer, // You can use a different icon here
                              color:Colors.deepPurpleAccent,
                            ),
                            SizedBox(width: 8.0), // Adjust the spacing as needed
                            Text(
                              '15-20 mins',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 28.0),

                        Column(
                            // Adjust the spacing as needed
                            // Search bar (TextField)
                           children: [
                              Center(
                                child: Container(
                                  height: MediaQuery.of(context).size.height / 16,
                                  width: MediaQuery.of(context).size.width / 1.5,
                                  decoration: BoxDecoration(
                                    color: Color(0xBEBCBCFF),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(left:14.0),
                                        child: Icon(
                                          Icons.search,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Search Items",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                ],
                              ),
                              ),
                        ),

                        SizedBox(height: 28.0),

                        // Recommended Items Section
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
                        _buildCard(context,'Pepperoni pizza', 'assets/image 55.png'),
                        _buildCard(context,'Chicken pizza', 'assets/image 55.png'),
                        ],
                        ),
                        SizedBox(height: 28.0),

                        // Menu of Pizza Hut Section
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
                            _buildCard(context, 'Pepperoni pizza', 'assets/image 55.png'),
                          _buildCard(context,'Pepperoni pizza', 'assets/image 55.png'),


                        ],
                        ),

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

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          onPressed: () {
            // _buildCard(context, 'Item 3', 'assets/image 55.png');
          },
          tooltip: 'Add Item',
          child: Icon(Icons.shopping_bag_rounded, color: Colors.white,),
        ),
        ),
    );

  }










  Widget _buildCard(BuildContext context, String cardName, String imagePath) {
    double containerHeight = MediaQuery.of(context).size.height * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.25;

    return Container(
      height: containerHeight,
      width: containerWidth,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 8.0, // Adjust the bottom padding as needed
              right: 8.0, // Adjust the right padding as needed
              child: Container(

                height: containerHeight/3,
                width: containerWidth/3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,


                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.deepPurpleAccent,
                  onPressed: () {
                    // Add functionality for the button
                  },
                  tooltip: 'Round Button',
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 2.0),
            Center(
              child: Text(
                cardName,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }






}