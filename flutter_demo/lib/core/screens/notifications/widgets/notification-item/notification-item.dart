import 'package:flutter/material.dart';
import 'package:flutter_demo/core/screens/notifications/common/notification.model.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel item;
  final Function onDismissed;

  NotificationItem({
    required this.item,
    required this.onDismissed,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Slidable(
        actionPane: SlidableStrechActionPane(),
        secondaryActions: <Widget>[
          /// right side
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => onDismissed(),
          ),
        ],
        child: ListTile(
          tileColor: Colors.grey.shade200,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          leading: CircleAvatar(
            radius: 24,
            child: Icon(Icons.notifications),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(item.message)
            ],
          ),
          onTap: () {},
        )
    );
  }
}