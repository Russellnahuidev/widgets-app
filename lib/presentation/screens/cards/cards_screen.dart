import 'package:flutter/material.dart';

final cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevaion 0'},
  {'elevation': 1.0, 'label': 'Elevaion 1'},
  {'elevation': 2.0, 'label': 'Elevaion 2'},
  {'elevation': 3.0, 'label': 'Elevaion 3'},
  {'elevation': 4.0, 'label': 'Elevaion 4'},
  {'elevation': 5.0, 'label': 'Elevaion 5'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen')),
      body: _CardScreen(),
    );
  }
}

class _CardScreen extends StatelessWidget {
  const _CardScreen();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) =>
                _CardType1(label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) =>
                _CardType2(label: card['label'], elevation: card['elevation']),
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(alignment: Alignment.bottomLeft, child: Text(label)),
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide(color: colors.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            ),
          ],
        ),
      ),
    );
  }
}
