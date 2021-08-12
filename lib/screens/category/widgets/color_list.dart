import 'package:flutter/material.dart';
import 'package:furniture_ui/constants/colors.dart';

class ColorList extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onSelect;
  const ColorList({
    Key? key,
    required this.colors,
    required this.onSelect,
  }) : super(key: key);

  @override
  _ColorListState createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  Color? colorSelected;
  select(color) {
    if (colorSelected == color)
      colorSelected = null;
    else {
      colorSelected = color;
      widget.onSelect(colorSelected!); //TODO: Check here later
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: widget.colors
              .map(
                (color) => InkWell(
                  onTap: () {
                    select(color);
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      border: colorSelected == color
                          ? Border.all(
                              width: 3,
                              color: primaryColor,
                            )
                          : null,
                      color: color,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset.zero,
                          blurRadius: 15,
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
