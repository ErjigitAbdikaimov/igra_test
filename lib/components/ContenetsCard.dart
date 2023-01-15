import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:igra_test/models/continents.dart';

class ContenentsCard extends StatelessWidget {
  const ContenentsCard({
    Key? key,
    required this.onTap,
    required this.item,
  }) : super(key: key);

  final Continents item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(height: 5),
            Text(
              item.name,
              style: TextStyle(fontSize: 22),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/${item.icon}.svg',
                  color: item.color,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
