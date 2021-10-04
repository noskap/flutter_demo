import 'package:flutter/material.dart';
import 'package:flutter_demo/core/demo-app/common/constants/menu-options.dart';

class EndDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container( // TODO update this so it looks better
      child: SizedBox(
        width: 200,
        child: ListView.separated(
          itemCount: MenuOptions.options.length,
          separatorBuilder: (context, index) => SizedBox(/* height: _buttons[index].spacing,*/),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: MenuOptions.options[index].action(context),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                child: Row(
                  children: [
                    MenuOptions.options[index].icon,
                    SizedBox(width: 10.0),
                    Text(MenuOptions.options[index].name, style: TextStyle(color: Colors.black87)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
