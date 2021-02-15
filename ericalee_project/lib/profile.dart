import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 240,
            child: Card(
                color: Colors.indigo[100],
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 72.0,
                                width: 72.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('images/jungkook.jpeg'),
                                      fit: BoxFit.contain,
                                    )),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '   Erica Lee',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  '   Experienced App Developer',
                                  style: Theme.of(context).textTheme.headline6,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 28),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '180 Ang Mo Kio Ave 8',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              '(65) 9211 1234',
                              style: Theme.of(context).textTheme.subtitle1,
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.accessibility),
                            Icon(Icons.timer),
                            Icon(Icons.phone_android),
                            Icon(Icons.phone_iphone),
                          ],
                        ),
                      ],
                    )))));
  }
}