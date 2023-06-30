// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _gluterFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Filters"),
        ),
        body: Column(
          children: [
            SwitchListTile(
              value: _gluterFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _gluterFreeFilterSet = isChecked;
                });
              },
              title: Text(
                "Gluten-Free",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                "Only include gluten-free meals.",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            )
          ],
        ));
  }
}
