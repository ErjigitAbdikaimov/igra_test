import 'package:flutter/material.dart';
import 'package:igra_test/components/Slider_widget.dart';
import 'package:igra_test/components/appbar_widget.dart';
import 'package:igra_test/components/variant_button.dart';
import 'package:igra_test/constanta/app_colors.dart';
import 'package:igra_test/models/suroo.dart';

class TestPage extends StatefulWidget {
  const TestPage({required this.suroo, super.key});
  final List<Suroo> suroo;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgColor,
      appBar: AppBar(
        foregroundColor: Appcolors.black,
        backgroundColor: Appcolors.bgColor,
        title: AppBarTitleWidget(
          tuuraJooptor: tuuraJooptor,
          kataJooptor: kataJooptor,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Slider_widget(
            value: index,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.suroo[index].text,
            style: TextStyle(fontSize: 32),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('images/${widget.suroo[index].image}.jpg'),
            ),
          ),
          VariantButton(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('тестин жыйынтыг'),
                    content: Text(
                      'tuurajooptor:$tuuraJooptor,\n\katajooptor$kataJooptor',
                      style: TextStyle(fontSize: 20),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            tuuraJooptor = 0;
                            kataJooptor = 0;
                          });
                        },
                        child: const Text('кайрадан баштоо'),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
