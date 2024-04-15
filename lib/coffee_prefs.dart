import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int sugars = 1;
  int milk =1;

  void increaseStrength() {
    setState(() {
      strength = strength <5? strength + 1 : 0;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars <5? sugars + 1 : 0;
    });
  }

  void increaseMilk() {
    setState(() {
      milk = milk <1? milk + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
          const Text('Strength: '),

          if (strength == 0)
            const Text('Decaf!'),


          for (int i = 0; i < strength; i++)
            Image.asset('assets/img/coffee_bean.jpg', width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
            ),

          const Expanded (child: SizedBox()),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            onPressed: increaseStrength, child: const Text ('+') ),
          ],
        ),
        Row(children: [
          const Text('Sugars: '),

          if (sugars == 0)
            const Text('No Sugar!'),

          for (int i = 0; i < sugars; i++)
            Image.asset('assets/img/sugar_cube.png', width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
            ),

          const Expanded (child: SizedBox()),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            onPressed: increaseSugars, child: const Text('+')),
          ],
        ),
        Row(children: [
          const Text('Milk: '),

          if (milk == 0)
            const Text('No Milk'),

          for (int i = 0; i < milk; i++)
            Image.asset('assets/img/milk.jpg', width: 25,
            color: Colors.brown[100],
            colorBlendMode: BlendMode.multiply,
            ),

          const Expanded (child: SizedBox()),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            onPressed: increaseMilk, child: const Text('+')),
          ],
        ),
      ]
    );
  }
}