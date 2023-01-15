import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:igra_test/components/ContenetsCard.dart';
import 'package:igra_test/constanta/app_colors.dart';
import 'package:igra_test/constanta/app_text.dart';
import 'package:igra_test/models/continents.dart';
import 'package:igra_test/pages/test.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgColor,
      appBar: AppBar(
        backgroundColor: Appcolors.bgColor,
        title: const Text(
          Apptext.gametitle,
          style: TextStyle(color: Appcolors.black),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Appcolors.blue,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Appcolors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Divider(
            height: 2,
            color: Appcolors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: continents.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContenentsCard(
                  item: continents[index],
                  onTap: () {
                    if (continents[index].suroo != null) {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => TestPage(
                            suroo: continents[index].suroo!,
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Yay A SnackBar'),
                      ));
                    }

                    ;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
