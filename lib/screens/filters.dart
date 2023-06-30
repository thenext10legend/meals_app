// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({
    super.key,
    required this.currentFilters,
  });

  final Map<Filter, bool> currentFilters;

  @override
  ConsumerState<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _gluterFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  @override
  void initState() {
    super.initState();
    _gluterFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet =
        _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFilterSet =
        _vegetarianFilterSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFilterSet = _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Filters"),
        ),
        // drawer: MainDrawer(
        //   onSelectScreen: (identifier) {
        //     Navigator.of(context).pop();
        //     if (identifier == 'meals') {
        //       Navigator.of(context).pushReplacement(
        //         MaterialPageRoute(
        //           builder: (ctx) => TabsScreen(),
        //         ),
        //       );
        //     }
        //   },
        // ),
        body: WillPopScope(
          onWillPop: () async {
            Navigator.of(context).pop({
              Filter.glutenFree: _gluterFreeFilterSet,
              Filter.lactoseFree: _lactoseFreeFilterSet,
              Filter.vegetarian: _vegetarianFilterSet,
              Filter.vegan: _veganFilterSet,
            });
            return false;
          },
          child: Column(
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
              ),
              SwitchListTile(
                value: _lactoseFreeFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _lactoseFreeFilterSet = isChecked;
                  });
                },
                title: Text(
                  "Lactose_Free",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  "Only include lactose-free meals.",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
              SwitchListTile(
                value: _vegetarianFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _vegetarianFilterSet = isChecked;
                  });
                },
                title: Text(
                  "Vegetarian",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  "Only include vegetarian meals.",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
              SwitchListTile(
                value: _veganFilterSet,
                onChanged: (isChecked) {
                  setState(() {
                    _veganFilterSet = isChecked;
                  });
                },
                title: Text(
                  "Vegan",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                subtitle: Text(
                  "Only include vegan meals.",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                activeColor: Theme.of(context).colorScheme.tertiary,
                contentPadding: EdgeInsets.only(
                  left: 34,
                  right: 22,
                ),
              ),
            ],
          ),
        ));
  }
}
