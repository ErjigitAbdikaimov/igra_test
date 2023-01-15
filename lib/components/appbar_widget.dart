import 'package:flutter/material.dart';
import 'package:igra_test/constanta/app_colors.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({
    Key? key,
    required this.tuuraJooptor,
    required this.kataJooptor,
  }) : super(key: key);
  final int tuuraJooptor;
  final int kataJooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(children: [
              Text(
                '$tuuraJooptor',
                style: TextStyle(color: Appcolors.green, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Text(
                '$kataJooptor',
                style: TextStyle(color: Appcolors.red, fontSize: 16),
              ),
            ]),
          ),
        ),
        Text(
          '3',
          style: TextStyle(fontSize: 22),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.favorite,
                      color: Appcolors.red,
                    );
                  }),
            ),
            InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
          ],
        ),
      ],
    );
  }
}
