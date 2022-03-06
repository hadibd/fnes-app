import 'package:flutter/material.dart';
import 'package:fnews_app/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> newsCatagory = [
    'Business',
    'Technology',
    'Entertainment',
    'Sports',
    'Science',
    'Health'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter News App')),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  isDense: true,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder()),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                        onPressed: () {}, child: Text(newsCatagory[index]));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: newsCatagory.length),
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detailspage()));
                          },
                          leading: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                          ),
                          title: const Text('This is news headline'),
                          subtitle: const Text('This is news subtitle'),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10))
          ],
        ),
      ),
    );
  }
}
