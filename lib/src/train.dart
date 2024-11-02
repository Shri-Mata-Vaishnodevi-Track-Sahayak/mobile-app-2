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
              ),
              _buildTrainRouteItem(
                'Ardh Kuwari',
                '8 KM',
              ),
              _buildTrainRouteItem(
                'Sanjichhat',
                '11 KM',
              ),
              SizedBox(height: 16.0),
              Text(
                'Arrived Ban Ganga',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Updated 20 mins ago',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
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

  Widget _buildTrainRouteItem(
    String milestone,
    String distance,
  ) {
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
            child: Text(
              distance,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}