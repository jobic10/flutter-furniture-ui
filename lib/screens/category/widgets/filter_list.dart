import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:furniture_ui/constants/colors.dart';

import 'filter_list_item.dart';

class FilterList extends StatefulWidget {
  final Function(List<String>) onSelect;
  const FilterList({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  List<String> selected = [];
  List<dynamic> options = [
    {'icon': SvgPicture.asset('assets/icons/tag.svg'), 'title': 'Discount'},
    {
      'icon': SvgPicture.asset('assets/icons/delivery.svg'),
      'title': 'Free Delivery'
    },
    {
      'icon': SvgPicture.asset('assets/icons/card.svg'),
      'title': 'Installment Plan'
    },
  ];
  toggle(String title) {
    if (selected.contains(title))
      selected.remove(title);
    else
      selected.add(title);
    setState(() {
      widget.onSelect(selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: options
            .map(
              (e) => FilterListItem(
                icon: e['icon'],
                title: e['title'],
                selected: this.selected.contains(e['title']),
                onTap: () {
                  toggle(e['title']);
                },
              ),
            )
            .toList());
  }
}
