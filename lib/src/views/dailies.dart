import 'package:flutter/material.dart';
import 'package:todos/src/widgets/card.dart';
import 'package:todos/styles.dart';
import 'package:ionicons/ionicons.dart';

class Dailies extends StatefulWidget {
  const Dailies({Key? key}) : super(key: key);

  @override
  State<Dailies> createState() => _DailiesState();
}

class _DailiesState extends State<Dailies> {
  bool tapped = false;
  handlerTap() => {setState(() => tapped = !tapped)};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: CustomColor.primaryBlue),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: tapped
              ? (Matrix4.translationValues(
                  200, MediaQuery.of(context).size.height * 0.05, 0)
                ..scale(0.9))
              : Matrix4.identity(),
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: CustomColor.bgPrimary,
              borderRadius: tapped
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))
                  : BorderRadius.circular(0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  child: Ink(
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(12),
                    //     color: Colors.white),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Ionicons.menu),
                  ),
                  onTap: handlerTap,
                ),
              ),
              //title
              Padding(
                padding: CustomPadding.mainHorizontal,
                child: Text(
                  'Hello Septa',
                  style: CustomText.title,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: CustomPadding.mainHorizontal,
                child: Text(
                  'Today list activities',
                  style: CustomText.subtitle,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: ListView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  children: const <Widget>[SizedBox(height: 12), CardTodo()],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
