import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/constants/colors.dart';

import 'color_list.dart';
import 'filter_list.dart';

class FilterModalBottomSheet extends StatelessWidget {
  const FilterModalBottomSheet({Key? key}) : super(key: key);

  void close(context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(28),
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    child: Icon(
                      Icons.close,
                    ),
                    onTap: () => close(context),
                  ),
                ),
                Text(
                  'Filter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Text(
                      'Reset',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: primaryColor, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Price Range',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 20),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    width: ((size.width / 2) - 55),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: 'Minimum',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Container(
                    width: 15,
                    height: 1,
                    color: Colors.black38,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    width: ((size.width / 2) - 55),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        hintText: 'Maximum',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              child: Text(
                'Item Filter',
                style: TextStyle(fontSize: 20),
              ),
              padding: const EdgeInsets.only(top: 20),
            ),
            Container(
              child: FilterList(onSelect: (selected) => print(selected)),
            ),
            Padding(
              child: Text(
                'Item Color',
                style: TextStyle(fontSize: 20),
              ),
              padding: const EdgeInsets.only(top: 20),
            ),
            ColorList(
              colors: [
                Colors.white,
                Colors.black87,
                Colors.blue,
                Colors.red,
                Colors.cyan,
                Colors.yellow,
                Colors.purple,
                Colors.pink,
              ],
              onSelect: (color) => print(color),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(primaryColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Text(
                  'Apply Filter',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  close(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
