import 'package:flutter/material.dart';
import 'package:progress_screens_el/widgets/name_input.dart';
import 'package:progress_screens_el/widgets/progress_bar.dart';


class NameOnly extends StatelessWidget {
  const NameOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.black,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "A few personal details 🙂",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    MyProgressBar(),
                  ],
                ),
              ),
            ),
          ),
          MyNameContainer(),
        ],
      ),
    );
  }
}
