import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screen')),
      body: _ButtonsViews(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the floating action button
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsViews extends StatelessWidget {
  const _ButtonsViews();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_rounded),
              label: Text('Elevated Disabled'),
            ),
            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.accessibility_new),
              label: Text('Filled'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.terminal),
              label: Text('Outline Icon'),
            ),
            TextButton(onPressed: () {}, child: Text('Text')),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.account_box_outlined),
              label: Text('Text Icon'),
            ),

            CustomButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {
            // Action for the custom button
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom Button', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
