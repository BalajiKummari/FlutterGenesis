import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {

  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

   const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
   }): assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: (){print("jus taped");},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Icon(
                  this.iconLocation,
                   ),
               ),
               Center(
                 child: Text(
                   this.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800), ),
               ),
               CupertinoSwitch(value: true, onChanged: (bool toggled){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
