import 'package:design1/home/showcasewidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> rowList = [
      'All',
      'Apartments',
      'Houses',
      'Flats',
      'Hotels',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Discover",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Icon(
                Icons.search,
                size: 30,
              )
            ]),
            SizedBox(height: 30),
            SizedBox(
                height: 40,
                child: ListView.builder(
                    addSemanticIndexes: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: rowList.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 40,
                              decoration: BoxDecoration(
                                  color: index == 0
                                      ? Color(0xFF254C86)
                                      : Color(0xFFE8ECF1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(rowList[index],
                                      style: TextStyle(
                                          color: index == 0
                                              ? Colors.white
                                              : Colors.black87,
                                          fontWeight: FontWeight.w400)))));
                    })),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  child: Text("See all"),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(height: 10),
            ShowCaseWidget(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Offers",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  child: Text("See all"),
                  onPressed: () {},
                )
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 10, 103, 179),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "")
        ],
      ),
    );
  }
}
