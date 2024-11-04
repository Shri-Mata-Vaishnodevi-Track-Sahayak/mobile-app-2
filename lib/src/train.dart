import 'package:flutter/material.dart';

class TrainRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMVDU Sahayak Route'),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Handle share functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTrainRouteItem(
                'Charan Paduka',
                '5 KM',
                '2 KM',
              ),
              _buildTrainRouteItem(
                'Ardh Kuwari',
                '8 KM',
                '6 KM',
              ),
              _buildTrainRouteItem('Sanjichhat', '11 KM', '9 KM'),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    'Arrived Ban Ganga',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Updated 20 mins ago',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                '+2 KM from last stop',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Trains',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildTrainRouteItem(String milestone,
      String distanceRemainingLastStop, String distanceRemainingCurrent) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 20.0, // Set your desired width
            height: 20.0, // Set your desired height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/oval.png'), // Use your image asset
                fit: BoxFit.cover, // Adjust the image fit
              ),
              borderRadius:
                  BorderRadius.circular(8.0), // Optional: add some rounding
            ),
          ),
          SizedBox(width: 8.0),
          Container(
            width: 50.0, // Set your desired width
            height: 50.0, // Set your desired height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/placeholder.png'), // Use your image asset
                fit: BoxFit.cover, // Adjust the image fit
              ),
              borderRadius:
                  BorderRadius.circular(8.0), // Optional: add some rounding
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  milestone,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text(
                  distanceRemainingLastStop,
                  textAlign: TextAlign.end,
                ),
                SizedBox(width: 16.0),
                Text(
                  "+" + distanceRemainingCurrent,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.green, // Set text color
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
