import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  const Detailspage({Key? key}) : super(key: key);

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://static01.nyt.com/images/2022/03/06/world/06ukraine-briefing-top1/merlin_203332950_e825298f-392e-45f1-ae70-88638a43a640-superJumbo.jpg?quality=75&auto=webp'),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'This an example of news headline',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Author: Aarick Hilson',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Published at: 12/12/2022',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Google News is a news aggregator service developed by Google. It presents a continuous flow of links to articles organized from thousands of publishers and magazines. Google News is available as an app on Android, iOS, and the Web. Google released a beta version in September 2002 and the official app in January 2006. Wikipedia',
                // style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade200),
              child: Text(
                  'Read more: https://news.google.com/topstories?hl=en-US&gl=US&ceid=US:en'),
            )
          ],
        ),
      ),
    );
  }
}
