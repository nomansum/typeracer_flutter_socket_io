import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:typeracer_tutorial/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 600,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Create/Join a room to play",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  text: "Create",
                  onTap: () {
                    Navigator.pushNamed(context, '/create-room');
                  },
                  isHome: true),
              CustomButton(
                  text: "Join",
                  onTap: () {
                    Navigator.pushNamed(context, '/join-room');
                  },
                  isHome: true)
            ],
          )
        ]),
      ),
    ));
  }
}
