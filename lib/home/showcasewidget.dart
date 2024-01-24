import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowCaseWidget extends StatelessWidget {
  const ShowCaseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 2; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 310,
                width: MediaQuery.of(context).size.width / 2 + 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.grey.shade200)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                height: 130,
                                width: MediaQuery.of(context).size.width,
                                image: AssetImage("assets/slide2.jpg"),
                                fit: BoxFit.fill,
                              )),
                          Positioned(
                              top: 8,
                              right: 8,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.9)),
                                child: Center(
                                    child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                )),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Emerland Houses",
                              style: Theme.of(context).textTheme.titleLarge),
                          Row(
                            children: [
                              Icon(CupertinoIcons.star_fill,
                                  color: Colors.amber, size: 20),
                              Text("4.7")
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                            size: 18,
                          ),
                          Text("Paris, Miami"),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "The room is located in the Prime Place of Paris, There is a terrace on site",
                      ),
                      Row(
                        children: [
                          Text("\$38",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text("/preson")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
