import 'package:flutter/material.dart';

class FoodListItemComponent extends StatelessWidget {
  final int index;

  const FoodListItemComponent({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://picsum.photos/600/1000?random=$index",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(left: 49, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
      Row(
        children: [
          SizedBox(
            child: Card(
              color: Color.fromRGBO(60, 60, 60, 0.2),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 18,
                  ),
                  Text(" Lorem, Ipsum",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.normal)),
                ]),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
