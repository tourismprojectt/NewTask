import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String username;
  const Homepage({super.key , required this.username });

  @override
  Widget build(BuildContext context) {
    final List <Map<String,String>> courses =[
    {
      'title': 'Programming',
      'image': 'images/programming.png',
    },
    {
      'title': 'Design',
      'image': 'images/web-design.png',
    },
    {
      'title': 'Technology',
      'image': 'images/robotic-hand.png',
    },
    {
      'title': 'Languages',
      'image': 'images/translation.png',
    },
    {
      'title': 'Data Science',
      'image': 'images/data-science.png',
    },
    {
      'title': 'Digital Marketing',
      'image': 'images/social-media.png',
    },
    ];
    final List <Map<String,String>> items = [
       {
        'title': 'Intro to Programming',
        'description': 'Get started with programming concepts and basics.',
      },
      {
        'title': 'Web Design Principles',
        'description': 'Learn the core principles of modern web design.',
      },
      {
        'title': 'Advancements in Technology',
        'description': 'Explore recent advancements in technology and their impacts.',
      },
      {
        'title': 'Language Learning Techniques',
        'description': 'Effective methods for learning new languages.',
      },
       {
        'title': 'Data Science Basics',
        'description': 'Introduction to data analysis and data science tools.',
      },
      {
        'title': 'Digital Marketing',
        'description': 'Learn strategies and techniques for effective digital marketing.',
      },
    ];
    return Scaffold(
    appBar: AppBar(
      title: RichText(
        textAlign: TextAlign.start,
       text: TextSpan( 
        children: [
          TextSpan( 
        text: 'Hey,$username!\n',
        style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 61, 7, 70),
      ),
      ),
      const TextSpan(
        text: 'Let\'s Start Learning!',
        style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 61, 7, 70)
      ),
    ),
        ],
       ),
      ),
    ),
  body: Column(
        children: [
          const SizedBox(height: 20), // Space between AppBar and body content
             Container(
              margin: const EdgeInsets.all(16.0),
              height: 170, // Set a fixed height for the horizontal ListView
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: courses.length,
              itemBuilder: (context, index) {
            final course = courses[index];
            return Container(
              width: 150, // Width of each item
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(course['image'] ?? ''),
                    radius: 60, // Radius of the circle
                  ),
                  const SizedBox(height: 8),
                  Text(
                    course['title'] ?? 'No Title',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                       ),
                      ],
                    ),
                  );
                },
              ),
            ),
        
         Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 8.0, 
                mainAxisSpacing: 8.0,
              ),
           itemCount:items.length,
           itemBuilder: (context,index){
            final item = items[index];
           return Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'] ?? 'No Title',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 80, 10, 92),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['description'] ?? 'No Description',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}