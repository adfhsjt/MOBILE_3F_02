import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Ahmad Dzul Fadhli Hannan (2341720106)';

    Row buildStars(int rating) {
      List<Widget> starsList = [];
      for (int i = 0; i < 5; i++) {
        if (i < rating) {
          starsList.add(Icon(Icons.star, color: Colors.green[500]));
        } else {
          starsList.add(const Icon(Icons.star, color: Colors.black));
        }
      }
      return Row(mainAxisSize: MainAxisSize.min, children: starsList);
    }

    int rating = 4;
    final stars = buildStars(rating);

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          stars,
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              '1.9K Reviews',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
          ),
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('1 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('5 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('1-2'),
              ],
            ),
          ],
        ),
      ),
    );

    const titleText = Text(
      'Indomie',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        color: Colors.black,
      ),
    );

    const subTitle = Text(
      'Indomie Goreng adalah mie instan yang dimasak tanpa kuah dan disajikan dengan bumbu-bumbu yang khas. Mie ini sangat populer di Indonesia dan dikenal di seluruh dunia karena rasanya yang lezat dan praktis untuk disiapkan.',
      style: TextStyle(fontSize: 16, color: Colors.black),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(children: [titleText, subTitle, ratings, iconList]),
    );

    Image mainImage = Image.asset('images/mie.png', fit: BoxFit.cover);

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: leftColumn),
                  Expanded(flex: 1, child: mainImage),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
